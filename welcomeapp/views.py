from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
from . import models
from django.contrib import messages

# Create your views here.
def loginpage(request):
    template=loader.get_template("welcomeapp/loginpage.html")
    # return HttpResponse(template.render())
    return render(request,"welcomeapp/loginpage.html")

def inputlogin(request):
    if request.method =='POST':
        uname=request.POST['stuname']
        umail=request.POST['stumail']
        passwd=request.POST['stupsw']
        print(umail,passwd)
        user=authenticate(username=uname,email=umail,password=passwd)
        if user is not None:
            if(user.is_superuser):
                print("\n",user.username,"\n")
                login(request,user)
                return HttpResponseRedirect(f'./facultyapp/')
            else:
                print("hi")
                print(user.id)
                print(user.username)
                login(request,user)
                # authenticate.login(request,user)
                # template=loader.get_template("/studentapp/")
                return HttpResponseRedirect(f'./studentapp/{user.id}')
        else:
            # messages.info(request,'invalid user')
            messages.info(request,"Something Went Wrong")
            return HttpResponseRedirect('/')

    pass

def passwdpage(request):
    template=loader.get_template("welcomeapp/loginpage.html")
    # return HttpResponse(template.render())
    return render(request,"welcomeapp/chpasswd.html")

def changepasswdSubmit(request):
    uname=request.POST['stuname']
    mail=request.POST['stumail']
    oldpswd=request.POST['oldpswd']
    newpswd=request.POST['newpswd']

    user=authenticate(username=uname,email=mail,password=oldpswd)
    if user is not None:
        authobj=models.AuthUser.objects.get(username=uname)
        lid=authobj.id
        strel=models.Studentloginrel.objects.filter(id=lid).values_list('usn')
        usn=(strel[0][0]).strip()
        print(lid)
        authobj.delete()

        auth = User.objects.create_user(id=lid,username=uname,email=mail,password=newpswd)
        auth.save()

        stlgrelid=models.AuthUser.objects.get(id=lid)
        print(stlgrelid)
        stlgrelusn=models.Student.objects.get(usn=usn)

        stlgrel=models.Studentloginrel(id=stlgrelid,usn=stlgrelusn)
        stlgrel.save()
        messages.info(request,"Password Changed Successfully")
    else:
        messages.info(request,"Something Went Wrong")


    return HttpResponseRedirect('/chpasswd/')

