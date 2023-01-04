from django.contrib import messages
from django.forms import forms
from donation.decorators import handle_uploaded_file, isDonorLoggedIn, isRestaurantLoggedIn, isVolunteerLoggedIn
from django.shortcuts import render, HttpResponse, redirect
from donation.modals import HModal
import re

# Constants
RESTAURANTS = 3
DONORS = 2


def RegisterUser(data):
    email_regex = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'
    password_regex = r'^(?=.*[A-Za-z@$%])(?=.*\d)[A-Za-z\d]{8,}$'
    uname = HModal.checkUsername(data['uname']) is not None
    email = re.fullmatch(email_regex, data["email"]) is None
    contact = re.fullmatch(r'\d{11}', data["contact"]) is None
    password = re.fullmatch(password_regex, data["pass"]) is None
    
    return {"uname":uname, "email":email,"contact":contact,"password":password}


def home(request):
    campaigns = HModal.getAllActiveCampaigns()[0:6]
    return render(request, "home/home.html", {"campaigns": campaigns})

def contact(request):
    return render(request, "home/contact.html")

def restaurant_signup(request):
    error = None
    data = None
    if "user_err" in request.session.keys():
        error = request.session['user_err']
        data = request.session['old_data']
        del request.session['user_err']
        del request.session['old_data']
    return render(request, "home/restaurant/signup.html",{"err":error,"data":data})

def restaurant_login(request):
    return render(request, "home/restaurant/login.html", {"err": request.GET.get('err')})


def restaurant_auth(request):
    res = redirect('/restaurant/login?err=True')
    if request.method == 'POST':
        data = request.POST
        user = HModal.verifyUser(data,3)
        print(user)
        if user != None:
            print(user)
            request.session['restaurant'] = data.get('uname')
            request.session['restaurant_id'] = user.get('U_ID')
            res = redirect('/restaurant')
    return res


def restaurant_logout(request):
    if 'restaurant' not in request.session:
        return redirect('/restaurant/login')

    del request.session['restaurant']
    del request.session['restaurant_id']
    return redirect('/restaurant/login')

@isRestaurantLoggedIn
def restaurant(request):
    items = HModal.getItems(RESTAURANTS)
    id = request.session['restaurant_id']
    return render(request, "home/restaurant/index.html", {"items": items,"id":id})

@isRestaurantLoggedIn
def restaurant_history(request):
    history = HModal.getRestaurantsDonationHistory(3)
    return render(request, "home/restaurant/history.html", {"history": history})

@isRestaurantLoggedIn
def restaurant_donate(request):
    data = request.POST
    result = HModal.restaurant_donate(data)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Item Is Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating Item!')
    items = HModal.getItems(RESTAURANTS)
    return redirect('/restaurant')



def donor_signup(request):
    error = None
    data = None
    if "user_err" in request.session.keys():
        error = request.session['user_err']
        data = request.session['old_data']
        del request.session['user_err']
        del request.session['old_data']
    return render(request, "home/donor/signup.html",{"err":error,"data":data})

def donor_register(request):
    
    data = request.POST
    error = RegisterUser(data)
    user_types = ['donor','restaurant','volunteer']
    if True in error.values():
        request.session['user_err'] = error
        request.session['old_data'] = data
        
        print(data.get('typ')==3)
        print(data.get('typ')=='3')
        
        if data.get('typ') == '2':
            res = redirect('/donor/signup')
        elif data.get('typ') == '3':
            res = redirect('/restaurant/signup')
        else:
            res = redirect('/volunteer/signup')
    
    elif request.method == 'POST':
        user = HModal.donorRegister(data)
        if user != None:
            request.session[user_types[int(data.get('typ'))-2]] = data.get('uname')
            request.session[user_types[int(data.get('typ'))-2]+'_id'] = user
            res = redirect('/home')
    return res

def donor_login(request):
    return render(request, "home/donor/login.html", {"err": request.GET.get('err')})


def donor_auth(request):
    res = redirect('/donor/login?err=True')
    if request.method == 'POST':
        data = request.POST
        user = HModal.verifyUser(data,2)
        if user != None:
            request.session['donor'] = data.get('uname')
            request.session['donor_id'] = user.get('U_ID')
            res = redirect('/home')
    return res


def donor_logout(request):
    if 'donor' not in request.session:
        return redirect('/donor/login')

    del request.session['donor']
    del request.session['donor_id']
    return redirect('/donor/login')


@isDonorLoggedIn
def donor(request):
    campaign = request.GET.get('id')
    res = redirect('/donor/login')
    if campaign != None :
        items = HModal.getItems(DONORS)
        campaign = HModal.getCampaignById(campaign)
        id = request.session['donor_id']
        res = render(request, "home/donor/index.html", {"items": items,'id':id,'campaign':campaign})
    return res


@isDonorLoggedIn
def donor_leftover(request):
    campaign = 1
    items = HModal.getItems(DONORS)
    campaign = HModal.getCampaignById(campaign)
    id = request.session['donor_id']
    return render(request, "home/donor/leftover.html", {"items": items,'id':id})
     


@isDonorLoggedIn
def donor_history(request):
    id = request.session['donor_id']
    history = HModal.getDonorDonationHistory(id)
    return render(request, "home/donor/history.html", {"history": history})

@isDonorLoggedIn
def donor_donate(request):
    data = request.POST
    d_img = request.FILES['img']
    img = handle_uploaded_file(d_img)
    result = HModal.donor_donate(data, img)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Thank You For your support!')
    else:
        messages.add_message(request, messages.ERROR, 'something went wrong!')
    items = HModal.getItems(DONORS)
    if data['campaign'] == "1":
        return redirect("/donor/leftover")
    else:
        return redirect("/donor")


def volunteer_signup(request):
    error = None
    data = None
    if "user_err" in request.session.keys():
        error = request.session['user_err']
        data = request.session['old_data']
        del request.session['user_err']
        del request.session['old_data']
        
    return render(request, "home/volunteer/signup.html",{"err":error,"data":data})

def volunteer_login(request):
    return render(request, "home/volunteer/login.html", {"err": request.GET.get('err')})


def volunteer_auth(request):
    res = redirect('/volunteer/login?err=True')
    if request.method == 'POST':
        data = request.POST
        user = HModal.verifyUser(data,4)
        if user != None:
            request.session['volunteer'] = data.get('uname')
            request.session['volunteer_id'] = user.get('U_ID')
            res = redirect('/volunteer')
    return res


def volunteer_logout(request):
    if 'volunteer' not in request.session:
        return redirect('/volunteer/login')

    del request.session['volunteer']
    del request.session['volunteer_id']
    return redirect('/volunteer/login')


@isVolunteerLoggedIn
def volunteer(request):
    id = request.session['volunteer_id']
    my_tasks = HModal.volunteerTasks(id,"S")
    history = HModal.volunteerTasks(id,"C")
    tasks = HModal.availableTasks(id)
    return render(request, "home/volunteer/index.html", {"tasks": tasks,'my_tasks':my_tasks,'id':id,"history": history})


@isVolunteerLoggedIn
def volunteer_take_task(request):
    data = request.GET
    id = request.session['volunteer_id']
    result = HModal.volunteer_take_task(data.get('id'), id)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Task Is Assigned Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Assigning Task!')
    return redirect('/volunteer/')

@isVolunteerLoggedIn
def volunteer_task_complete(request):
    data = request.GET
    result = HModal.volunteer_task_complete(data.get('id'))
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Task Marked Completed Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Marking Task!')
    return redirect('/volunteer/')



def campaigns(request):
    campaigns = HModal.getAllActiveCampaigns()
    return render(request, "home/campaigns/index.html", {"campaigns": campaigns})


def blogs(request):
    blogs = HModal.getAllActiveBlogs()
    return render(request, "home/blog/index.html", {"blogs": blogs})


def view_blog(request):
    id = request.GET.get('id')
    blog = HModal.getBlogById(id)
    return render(request, "home/blog/view.html", {"blog": blog})
