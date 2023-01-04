from datetime import date
import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="donation",
    port=3306,
    autocommit=True
)

db = con.cursor(buffered=True)

def getAllActiveCampaigns():
    db.execute('SELECT * FROM CAMPAIGNS WHERE C_STATUS = "Y"')
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def getCampaignById(id):
    db.execute('SELECT * FROM CAMPAIGNS WHERE C_STATUS = "Y" AND C_ID = %s' % id)
    columns = [column[0] for column in db.description]
    result = dict(zip(columns, db.fetchone()))
    return result


def getAllActiveBlogs():
    db.execute('SELECT * FROM Blogs WHERE B_STATUS = "Y"')
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def getBlogById(id):
    db.execute('SELECT * FROM Blogs WHERE B_STATUS = "Y" AND B_ID = %s' % id)
    columns = [column[0] for column in db.description]
    result = dict(zip(columns, db.fetchone()))
    return result


def getItems(type):
    
    db.execute('SELECT * FROM `useritems` ui INNER JOIN USERS u ON u.U_TYPE = ui.UI_USERID AND u.`U_ID` = %s INNER JOIN items i ON i.`I_ID` = ui.`UI_ITEM`' % type)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results


def getRestaurantsDonationHistory(id):
    db.execute("SELECT d.*, u.*,  GROUP_CONCAT(i.`I_NAME`) AS 'items',  GROUP_CONCAT(di.`DI_QTY`) AS 'qty',   GROUP_CONCAT(di.`DI_RATE`) AS 'rate' FROM `donations` d INNER JOIN `donationitems` di ON d.`D_ID` = di.`DI_DONATIION` INNER JOIN `items` i ON di.`DI_ITEM` = i.`I_ID` INNER JOIN users u ON d.`D_DONOR` = u.U_ID WHERE d.`D_DONOR`= %s GROUP BY d.d_id" % id)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def restaurant_donate(data):
    db.execute('INSERT INTO donations VALUES(null, null, %s, %s, %s, "Y", 2, null)',
               (data.get('id'), date.today().strftime("%Y-%m-%d"), data.get('total')))
    if db.rowcount>0:
        donation =  int(db.lastrowid)
        query = 'INSERT INTO donationitems VALUES(null, %s, %s, %s, %s)'
        ins_data = []
        for idx, i in enumerate(data.getlist('item')):
            if data.getlist('qty')[idx] == '0' or data.getlist('qty')[idx] == '':
                continue
            ins_data.append((donation,i,data.getlist('qty')[idx],data.getlist('rate')[idx]))
        db.executemany(query,ins_data)
        return db.rowcount > 0
    else:
        return False


def donor_donate(data,img):
    db.execute('INSERT INTO donations VALUES(null, %s, %s, %s, %s, "Y", 1, %s)',
               (data.get('campaign'),data.get('id'), date.today().strftime("%Y-%m-%d"), data.get('total'), img))
    if db.rowcount>0:
        donation = int(db.lastrowid)
        query = 'INSERT INTO donationitems VALUES(null, %s, %s, %s, %s)'
        ins_data = []
        print(data.getlist('qty'))
        for idx, i in enumerate(data.getlist('item')):
            print(idx)
            if data.getlist('qty')[idx] == '0' or data.getlist('qty')[idx] == '':
                continue
            ins_data.append((donation, i, data.getlist('qty')[idx], data.getlist('rate')[idx]))
        db.executemany(query, ins_data)
        return db.rowcount > 0
    else:
        return False

def getDonorDonationHistory(id):
    db.execute("SELECT d.*,  GROUP_CONCAT(i.`I_NAME`) AS 'items',  GROUP_CONCAT(di.`DI_QTY`) AS 'qty',   GROUP_CONCAT(di.`DI_RATE`) AS 'rate' FROM `donations` d INNER JOIN `donationitems` di ON d.`D_ID` = di.`DI_DONATIION` INNER JOIN `items` i ON di.`DI_ITEM` = i.`I_ID` WHERE d.D_DONOR = %s GROUP BY d.d_id" % id)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def volunteerTasks(id,type):
    db.execute("SELECT d.*,u.*, GROUP_CONCAT(i.`I_NAME`) AS 'items',  GROUP_CONCAT(di.`DI_QTY`) AS 'qty',   GROUP_CONCAT(di.`DI_RATE`) AS 'rate' FROM donations d INNER JOIN users u ON d.`D_DONOR` = u.`U_ID` INNER JOIN `donationitems` di ON d.`D_ID` = di.`DI_DONATIION` INNER JOIN `items` i ON di.`DI_ITEM` = i.`I_ID` INNER JOIN volunteertasks vt ON vt.`VT_DONATION`= d.`D_ID` WHERE vt.VT_USER = %s AND vt.VT_STATUS = %s AND  d.`D_TYPE` = 2 GROUP BY d.d_id" 
               , (id, type))
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def availableTasks(id):
    db.execute("SELECT d.*,u.*, GROUP_CONCAT(i.`I_NAME`) AS 'items',  GROUP_CONCAT(di.`DI_QTY`) AS 'qty',   GROUP_CONCAT(di.`DI_RATE`) AS 'rate' FROM donations d INNER JOIN users u ON d.`D_DONOR` = u.`U_ID` INNER JOIN `donationitems` di ON d.`D_ID` = di.`DI_DONATIION` INNER JOIN `items` i ON di.`DI_ITEM` = i.`I_ID` WHERE  d.`D_TYPE` = 2 AND d.`D_ID` NOT IN (select VT_DONATION from volunteertasks) GROUP BY d.d_id")
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def volunteer_take_task(task,id):
    db.execute('INSERT INTO volunteertasks VALUES(null, %s, %s, "S", %s)',
               (id, task, date.today().strftime("%Y-%m-%d")))
    return db.rowcount>0

    
def volunteer_task_complete(task):
    db.execute('UPDATE volunteertasks SET VT_STATUS="C" WHERE VT_DONATION = %s' % task)
    return db.rowcount>0    



def verifyUser(data,type):
    db.execute('SELECT * FROM USERS WHERE U_TYPE = %s AND U_USERNAME = %s AND U_PASSWORD = %s',
               (type, data.get('uname'), data.get('password')))
    columns = [column[0] for column in db.description]
    result =  db.fetchone()
    if result != None: 
        return dict(zip(columns, result))
    else:
        return None
    
def checkUsername(uname):
    db.execute('SELECT * FROM USERS WHERE U_USERNAME = "%s" ' % uname)
    return db.fetchone()

def donorRegister(data):
    db.execute('INSERT INTO users VALUES(null, %s, %s, %s, %s, %s, %s, %s)',
               (data.get('name'), data.get('contact'), data.get('email'), data.get('address'), data.get('uname'), data.get('pass'),data.get('typ')))
    return int(db.lastrowid)