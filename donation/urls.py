"""donation URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from donation import aviews, hviews

urlpatterns = [ 
    path('', hviews.home),
    path('admin/', aviews.login,name='login'),
    path('admin/auth', aviews.auth),
    path('admin/logout', aviews.logout),
    path('admin/dashboard', aviews.dashboard),
    path('admin/campaigns', aviews.campaigns),
    path('admin/add_campaign', aviews.add_campaigns),
    path('admin/insert_campaign', aviews.insert_campaign),
    path('admin/view_campaign', aviews.view_campaign),
    path('admin/edit_campaign', aviews.edit_campaign),
    path('admin/alter_campaign', aviews.alter_campaign),
    path('admin/blogs', aviews.blogs),
    path('admin/add_blog', aviews.add_blog),
    path('admin/insert_blog', aviews.insert_blog),
    path('admin/view_blog', aviews.view_blog),
    path('admin/edit_blog', aviews.edit_blog),
    path('admin/alter_blog', aviews.alter_blog),
    path('admin/items', aviews.items),
    path('admin/add_item', aviews.add_items),
    path('admin/insert_item', aviews.insert_item),
    path('admin/view_item', aviews.view_item),
    path('admin/edit_item', aviews.edit_item),
    path('admin/alter_item', aviews.alter_item),
    path('admin/donor_types', aviews.donor_types),
    path('admin/edit_donor_items', aviews.donor_items),
    path('admin/alter_donor_items', aviews.alter_donor_items),
    path('admin/donor_types', aviews.donor_types),
    path('admin/donors', aviews.donors),
    path('admin/mark_approved', aviews.mark_approved),
    path('admin/view_donations', aviews.view_donations),
    path('admin/restaurants', aviews.restaurants),
    path('admin/volunteers', aviews.volunteers),
    path('admin/volunteer_tasks', aviews.volunteer_tasks),
    path('admin/mark_task_complete', aviews.task_complete),
    path('home/', hviews.home),
    path('home/contact', hviews.contact),
    path('home/campaigns', hviews.campaigns),
    path('home/blogs', hviews.blogs),
    path('home/blog', hviews.view_blog),
    path('restaurant/login', hviews.restaurant_login),
    path('restaurant/logout', hviews.restaurant_logout),
    path('restaurant/auth', hviews.restaurant_auth),
    path('restaurant/signup', hviews.restaurant_signup),
    path('restaurant/', hviews.restaurant),
    path('restaurant/history', hviews.restaurant_history),
    path('restaurant/donate', hviews.restaurant_donate),
    path('donor/', hviews.donor),
    path('donor/history', hviews.donor_history),
    path('donor/donate', hviews.donor_donate),
    path('donor/login', hviews.donor_login),
    path('donor/logout', hviews.donor_logout),
    path('donor/auth', hviews.donor_auth),
    path('donor/signup', hviews.donor_signup),
    path('donor/register', hviews.donor_register),
    path('donor/leftover', hviews.donor_leftover),
    path('volunteer/', hviews.volunteer),
    path('volunteer/task', hviews.volunteer_take_task),
    path('volunteer/task_complete', hviews.volunteer_task_complete),
    path('volunteer/login', hviews.volunteer_login),
    path('volunteer/logout', hviews.volunteer_logout),
    path('volunteer/auth', hviews.volunteer_auth),
    path('volunteer/signup', hviews.volunteer_signup),
]
