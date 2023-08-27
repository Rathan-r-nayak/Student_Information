from django.urls import include,path
from . import views


urlpatterns=[
    path("<int:id>",views.studentapp_def),
    path("info/<int:id>",views.studentapp_info),
    path("marks/<int:id>",views.studentapp_marks),
    path("attendence/<int:id>",views.studentapp_attendence),
    path("faculty/<int:id>",views.studentapp_faculty),
# <int:id>
]