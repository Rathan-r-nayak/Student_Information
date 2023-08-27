from django.urls import include,path
from . import views


urlpatterns=[
    path("",views.loginpage),
    path("enterlogin",views.inputlogin),
    path("chpasswd/",views.passwdpage),
    path("chpasswd/chpasswdsubmit",views.changepasswdSubmit)
]




# CREATE TABLE marks(mid integer,usn varchar(10),totalmarks integer,obtmarks integer,sgpa float,backlogs integer,PRIMARY KEY(mid,usn),FOREIGN KEY(usn) REFERENCES student(usn) on DELETE CASCADE);

