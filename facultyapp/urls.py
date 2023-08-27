from django.urls import include,path
from . import views
from django.contrib import admin

admin.site.site_header="ADMIN PANEL"
admin.site.index_title="WELCOME"


urlpatterns=[
    path("",views.facapp_dashboard),

    path("addstaff",views.addstaff),
    path("addstaffSubmit",views.addstaffSubmit),

    path("addstudentinfo",views.fac_addstudentinfo),
    path("addstudentinfoSubmit",views.fac_addstudentinfoSubmit),

    path("addmarks",views.fac_addmarks),
    path("addmarksSubmit",views.fac_addmarksSubmit),
    
    path("addattendence",views.fac_addattendence),
    path("addattendenceSubmit",views.fac_addattendenceSubmit),

    path("semester/<int:sem>",views.semester),

    path("semester/deletedata/<str:usn>",views.deletedata),
    path("semester/editdata/<str:usn>",views.editdata),
    path("semester/editdata/editdata_submit/<int:id>",views.editdataSubmit),
    
    path("semester/editdata/deleteattendencedata/<int:aid>",views.deleteattendencedata),

    path("semester/editdata/deletemarksdata/<int:mid>",views.deletemarksdata),
    # path("")
    # path("info/",views.facapp_info),
    # path("marks/",views.facapp_marks),
    # path("attendence/",views.facapp_attendence),
    # path("faculty/",views.facapp_faculty),

]