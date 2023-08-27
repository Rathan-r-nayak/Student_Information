from django.contrib import admin
from . import models
# Register your models here.


class StudentAdmin(admin.ModelAdmin):
    # Let you to search with title name, release year and length of duration of movie
    search_fields = ['name']
    # There will be a filter on release year
    # list_filter = ['usn']
    list_display =['usn', 'name', 'branch']
    # editable_list = ['name']

admin.site.register(models.Student,StudentAdmin)
admin.site.register(models.AuthUser)



'''
{% extends "admin/base.html" %}
 
{% block title %}{% if subtitle %}{{ subtitle }} | {% endif %}{{ title }} | {{ site_title|default:_('Django site admin') }}{% endblock %}
 
{% block branding %}
<h1 id="site-name" style="font-family: cursive;" ><a href="{% url 'admin:index' %}">ADMIN</a></h1>
{% endblock %}
 
{% block nav-global %}{% endblock %}'''
