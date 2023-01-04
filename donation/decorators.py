from django.http import HttpResponseRedirect
from donation.settings import MEDIA_ROOT
import os
import time


def isLoggedIn(function):
    def wrapper(request, *args, **kwargs):
        # Check if the Session exists the login key.Here the user_id
        if 'admin' not in request.session.keys():
            return HttpResponseRedirect("/admin")
        else:
            return function(request, *args, **kwargs)
    wrapper.__doc__ = function.__doc__
    wrapper.__name__ = function.__name__
    return wrapper

def isDonorLoggedIn(function):
    def wrapper(request, *args, **kwargs):
        # Check if the Session exists the login key.Here the user_id
        if 'donor' not in request.session.keys():
            return HttpResponseRedirect("/donor/login")
        else:
            return function(request, *args, **kwargs)
    wrapper.__doc__ = function.__doc__
    wrapper.__name__ = function.__name__
    return wrapper

def isRestaurantLoggedIn(function):
    def wrapper(request, *args, **kwargs):
        # Check if the Session exists the login key.Here the user_id
        if 'restaurant' not in request.session.keys():
            return HttpResponseRedirect("/restaurant/login")
        else:
            return function(request, *args, **kwargs)
    wrapper.__doc__ = function.__doc__
    wrapper.__name__ = function.__name__
    return wrapper

def isVolunteerLoggedIn(function):
    def wrapper(request, *args, **kwargs):
        # Check if the Session exists the login key.Here the user_id
        if 'volunteer' not in request.session.keys():
            return HttpResponseRedirect("/volunteer/login")
        else:
            return function(request, *args, **kwargs)
    wrapper.__doc__ = function.__doc__
    wrapper.__name__ = function.__name__
    return wrapper


def handle_uploaded_file(f):
    name = 'transactions/'+str(round(time.time() * 1000)) + "." + f.name.split('.')[1]
    with open(os.path.join(MEDIA_ROOT, name), 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)
    return name
