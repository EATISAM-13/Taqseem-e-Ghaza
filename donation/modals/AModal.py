import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="donation",
    port=3306,
    autocommit=True
)

db = con.cursor()


def verifyUser(data):
    db.execute('SELECT * FROM USERS WHERE U_TYPE = 1 AND U_USERNAME = %s AND U_PASSWORD = %s',
               (data.get('uname'), data.get('pass')))
    return len(db.fetchall())>0

def getAllCampaigns():
    db.execute('SELECT * FROM CAMPAIGNS')
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
    db.execute('SELECT * FROM CAMPAIGNS WHERE C_ID = %s' % id)
    columns = [column[0] for column in db.description]
    result = dict(zip(columns, db.fetchone()))
    return result
  
  
def insertCampaign(data):
    db.execute('INSERT INTO CAMPAIGNS VALUES(null, %s, %s, "Y", %s)',
               (data.get('c_name'), data.get('c_desc'), data.get('c_date')))
    return db.rowcount
  
  
def alterCampaign(data):
    db.execute('UPDATE CAMPAIGNS SET C_NAME = %s, C_DESCRIPTION = %s, C_STATUS = %s, C_DATE = %s WHERE C_ID = %s',
               (data.get('c_name'), data.get('c_desc'), data.get('c_status'), data.get('c_date'), data.get('id')))
    return db.rowcount

def getAllBlogs():
    db.execute('SELECT * FROM BLOGS')
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
    db.execute('SELECT * FROM BLOGS WHERE B_ID = %s' % id)
    columns = [column[0] for column in db.description]
    result = dict(zip(columns, db.fetchone()))
    return result
  
  
def insertBlog(data):
    db.execute('INSERT INTO BLOGS VALUES(null, %s, %s, "Y", %s)',
               (data.get('name'), data.get('desc'), data.get('date')))
    return db.rowcount
  
  
def alterBlog(data):
    db.execute('UPDATE BLOGS SET B_NAME = %s, B_CONTENT = %s, B_STATUS = %s, B_DATE = %s WHERE B_ID = %s',
               (data.get('name'), data.get('desc'), data.get('status'), data.get('date'), data.get('id')))
    return db.rowcount


def getAllItems():
    db.execute('SELECT * FROM Items')
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results
  
def getItemById(id):
    db.execute('SELECT * FROM Items WHERE I_ID = %s' % id)
    columns = [column[0] for column in db.description]
    result = dict(zip(columns, db.fetchone()))
    return result
  
  
def insertItem(data):
    db.execute('INSERT INTO Items VALUES(null, %s, %s, "Y", %s)',
               (data.get('name'), data.get('subtext'), data.get('rate')))
    return db.rowcount
  
def alterItem(data):
    db.execute('UPDATE Items SET I_NAME = %s, I_SUBTEXT = %s, I_STATUS = %s, I_RATE = %s WHERE I_ID = %s',
               (data.get('name'), data.get('subtext'), data.get('status'), data.get('rate'), data.get('id')))
    return db.rowcount
  
def getAllDonorTypes():
    db.execute('SELECT * FROM USERTYPES WHERE UT_ID NOT IN (1,4)')
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results
  
def getDonorTypeById(id):
    db.execute('SELECT * FROM USERTYPES WHERE UT_ID = %s' % id)
    columns = [column[0] for column in db.description]
    result = dict(zip(columns, db.fetchone()))
    return result
  
def getDonorItemById(id):
    db.execute('SELECT * FROM Items I INNER JOIN USERITEMS UI ON UI.UI_ITEM = I.I_ID AND UI.UI_USERID = %s' % id)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def alterDonorItems(id,new_items,removed_items):
    if(len(removed_items)>0):
        for i in removed_items:
            db.execute('DELETE FROM USERITEMS WHERE UI_USERID = %s AND UI_ITEM = %s',(id,i))
    if(len(new_items)>0):
        for i in new_items:
            db.execute('INSERT INTO USERITEMS VALUES(null,%s,%s)',(id,i))
            
    return db.rowcount

def getUsers(type):
    db.execute('SELECT * FROM USERS WHERE U_TYPE = %s' % type)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def getUserDonations(id):
    db.execute("SELECT d.*,u.*, GROUP_CONCAT(i.`I_NAME`) AS 'items',  GROUP_CONCAT(di.`DI_QTY`) AS 'qty',   GROUP_CONCAT(di.`DI_RATE`) AS 'rate' FROM donations d INNER JOIN users u ON d.`D_DONOR` = u.`U_ID` INNER JOIN `donationitems` di ON d.`D_ID` = di.`DI_DONATIION` INNER JOIN `items` i ON di.`DI_ITEM` = i.`I_ID`  WHERE  u.U_ID = %s  GROUP BY d.d_id" 
               % id)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def getVolunteerTasks(id):
    db.execute("SELECT d.*,u.*,vt.*, GROUP_CONCAT(i.`I_NAME`) AS 'items',  GROUP_CONCAT(di.`DI_QTY`) AS 'qty',   GROUP_CONCAT(di.`DI_RATE`) AS 'rate' FROM donations d INNER JOIN users u ON d.`D_DONOR` = u.`U_ID` INNER JOIN `donationitems` di ON d.`D_ID` = di.`DI_DONATIION` INNER JOIN `items` i ON di.`DI_ITEM` = i.`I_ID` INNER JOIN volunteertasks vt ON vt.`VT_DONATION`= d.`D_ID` WHERE vt.VT_USER = %s GROUP BY d.d_id" 
               % id)
    columns = [column[0] for column in db.description]
    results = []
    idx = 0
    for row in db.fetchall():
        idx += 1
        res = dict(zip(columns, row))
        res['idx'] = idx
        results.append(res)
    return results

def TaskComplete(id):
    db.execute('UPDATE volunteertasks SET VT_STATUS = "D" WHERE VT_ID = %s'
               % id)
    return db.rowcount

def mark_approved(id):
    db.execute('UPDATE DONATIONS SET D_STATUS = "A" WHERE D_ID = %s'
               % id)
    return db.rowcount

