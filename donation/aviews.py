from django.contrib import messages
from donation.decorators import isLoggedIn
from django.shortcuts import render, redirect,HttpResponse
from donation.modals import AModal

def login(request):
    if 'admin' in request.session:
        return redirect('/admin/dashboard')
    
    err = request.GET.get('err')
    return render(request, "admin/login.html",{"err":err})

def auth(request):
    res = redirect('/admin?err=True')
    if request.method == 'POST':
        data = request.POST
        if AModal.verifyUser(data):
            request.session['admin'] = data.get('uname')
            res = redirect('/admin/dashboard')
    return res
    
def logout(request):
    
    if 'admin' not in request.session:
        return redirect('/admin/')
    
    del request.session['admin']
    return redirect('/admin')

    
@isLoggedIn
def dashboard(request):    
    campaigns = AModal.getAllCampaigns()
    donors = AModal.getUsers(2)
    restaurants = AModal.getUsers(3)
    volunteers = AModal.getUsers(4)
    return render(request, "admin/dashboard.html", {'campaigns': campaigns, "donors": donors, "restaurants": restaurants, "volunteers": volunteers})


    
@isLoggedIn
def campaigns(request):
    campaigns = AModal.getAllCampaigns()
    return render(request, "admin/campaigns.html", { 'campaigns': campaigns})


    
@isLoggedIn
def add_campaigns(request):
    return render(request, "admin/add_campaigns.html", {})


    
@isLoggedIn
def insert_campaign(request):
    data = request.POST
    result = AModal.insertCampaign(data)
    msg = {}
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Campaign Is Added Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Adding New Campaign!')
    messages.add_message(request, messages.INFO, msg)
    return redirect('/admin/campaigns')


    
@isLoggedIn
def view_campaign(request):
    data = request.GET
    campaign = AModal.getCampaignById(data.get('id'))
    return render(request, "admin/view_campaign.html", { 'campaign': campaign})


    
@isLoggedIn
def edit_campaign(request):
    data = request.GET
    campaign = AModal.getCampaignById(data.get('id'))
    return render(request, "admin/edit_campaign.html", { 'campaign': campaign})


    
@isLoggedIn
def alter_campaign(request):
    data = request.POST
    result = AModal.alterCampaign(data)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Campaign Is Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating Campaign!')
    return redirect('/admin/campaigns')


    
@isLoggedIn
def blogs(request):
    blogs = AModal.getAllBlogs()
    return render(request, "admin/blogs.html", { 'blogs': blogs})


    
@isLoggedIn
def add_blog(request):
    return render(request, "admin/add_blog.html", {})


    
@isLoggedIn
def insert_blog(request):
    data = request.POST
    result = AModal.insertBlog(data)
    msg = {}
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Blog Is Added Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Adding New Blog!')
    messages.add_message(request, messages.INFO, msg)
    return redirect('/admin/blogs')


    
@isLoggedIn
def view_blog(request):
    data = request.GET
    blog = AModal.getBlogById(data.get('id'))
    return render(request, "admin/view_blog.html", { 'blog': blog})


    
@isLoggedIn
def edit_blog(request):
    data = request.GET
    blog = AModal.getBlogById(data.get('id'))
    return render(request, "admin/edit_blog.html", { 'blog': blog})


    
@isLoggedIn
def alter_blog(request):
    data = request.POST
    result = AModal.alterBlog(data)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'blog Is Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating blog!')
    return redirect('/admin/blogs')

    
@isLoggedIn
def items(request):
    items = AModal.getAllItems()
    return render(request, "admin/items.html", { 'items': items})


    
@isLoggedIn
def add_items(request):
    return render(request, "admin/add_item.html")


    
@isLoggedIn
def insert_item(request):
    data = request.POST
    result = AModal.insertItem(data)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Item Is Added Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Adding New Item!')
    return redirect('/admin/items')


    
@isLoggedIn
def view_item(request):
    data = request.GET
    item = AModal.getItemById(data.get('id'))
    return render(request, "admin/view_item.html", { 'item': item})


    
@isLoggedIn
def edit_item(request):
    data = request.GET
    item = AModal.getItemById(data.get('id'))
    return render(request, "admin/edit_item.html", { 'item': item})


    
@isLoggedIn
def alter_item(request):
    data = request.POST
    result = AModal.alterItem(data)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Item Is Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating Item!')
    return redirect('/admin/items')


    
@isLoggedIn
def donor_types(request):
    donor_types = AModal.getAllDonorTypes()
    return render(request, "admin/donor_types.html", { 'donor_types': donor_types})


    
@isLoggedIn
def donor_items(request):
    data = request.GET
    donor = AModal.getDonorTypeById(data.get('id'))
    donor_items = AModal.getDonorItemById(data.get('id'))
    items = AModal.getAllItems()
    return render(request, "admin/donor_items.html", { 'items': items, "donor_items":donor_items,"donor":donor})

@isLoggedIn
def alter_donor_items(request):
    data = request.POST
    donor_items = AModal.getDonorItemById(data.get('id'))
    d_items = []
    items = []
    for di in donor_items:
        d_items.append(di['UI_ITEM'])
    
    for i in data.getlist('items'):
        items.append(int(i))
    
    removed_items = list(set(d_items) - set(items))
    new_items = list(set(items) - set(d_items))
    result = AModal.alterDonorItems(data.get('id'),new_items,removed_items)
    
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Donar Items Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating Donar Items!')
    
    return redirect('/admin/edit_donor_items?id='+data.get('id'))


@isLoggedIn
def donors(request):
    donors = AModal.getUsers(2)
    return render(request, "admin/donors.html", {"donors":donors})

@isLoggedIn
def restaurants(request):
    restaurants = AModal.getUsers(3)
    return render(request, "admin/donors.html", {"donors":restaurants})

@isLoggedIn
def mark_approved(request):
    id = request.GET.get('id')
    result = AModal.mark_approved(id)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating!')
    return redirect(request.META.get('HTTP_REFERER'))

@isLoggedIn
def view_donations(request):
    id = request.GET.get('id')
    donations = AModal.getUserDonations(id)
    return render(request, "admin/donations.html", {"donations":donations})


@isLoggedIn
def volunteers(request):
    volunteers = AModal.getUsers(4)
    return render(request, "admin/donors.html", {"donors":volunteers})

@isLoggedIn
def volunteer_tasks(request):
    id = request.GET.get('id')
    tasks = AModal.getVolunteerTasks(id)
    return render(request, "admin/volunteer_tasks.html", {"tasks":tasks})


@isLoggedIn
def task_complete(request):
    id = request.GET.get('id')
    result = AModal.TaskComplete(id)
    if result > 0:
        messages.add_message(request, messages.SUCCESS, 'Updated Successfully!')
    else:
        messages.add_message(request, messages.ERROR, 'Error In Updating!')
    return redirect(request.META.get('HTTP_REFERER'))