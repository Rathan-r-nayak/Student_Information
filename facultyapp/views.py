from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
from . import models
from django.shortcuts import redirect

# Create your views here.

# def loginpage(request):
#     template=loader.get_template("facultyapp/loginpage.html")
#     # return HttpResponse(template.render())
#     return render(request,"facultyapp/loginpage.html")


# def login(request):
#     try:
#         if request.user.is_authenticated:
#             return HttpResponseRedirect('/facultyapp/loginpage.html')
#         if(request.method=="POST"):
#             uname=request.POST.get('username')
#             passwd=request.POST.get('password')
#             uobj=User.objects.filter(username=uname)
#             print(uname,passwd)
#             if not uobj.exists():
#                 return HttpResponseRedirect('/facultyapp/loginpage.html')
            
#             uobj=authenticate(username=uname,password=passwd)

#             if(uobj and uobj.is_superuser):
#                 login(request,uobj)
#                 return HttpResponseRedirect("/facultyapp/faculty.html")
            
#             return HttpResponseRedirect('facultyapp/loginpage.html')
#         return render('facultyapp/loginpage.html')
#     except Exception as e:
#         print(e,"\nhi\n")




#dashboard showing student deatails   dashboard.html
def facapp_dashboard(request):
    auth=models.AuthUser.objects.filter(is_superuser=1).values()
    # auth=models.AuthUser.objects.all().values()
    st=models.Student.objects.all().values()
    # return HttpResponse(template.render())
    context={
        "auth":auth,
        # "student":st

    }
    template = loader.get_template('facultyapp/dashboard.html')
    return HttpResponse(template.render(context, request))


#-----------------------------------------------------------
def addstaff(request):
    return render(request,"facultyapp/addstaff.html")

def addstaffSubmit(request):
    a_username=request.POST["auth_username"]
    a_email=request.POST["auth_email"]
    a_passwd=request.POST["auth_passwd"]
    
    auth = User.objects.create_user(username=a_username,email=a_email,is_superuser=1,is_staff=1,password=a_passwd)
    auth.save()
    return HttpResponseRedirect('/facultyapp')

#-----------------------------------------------------------
#showing addstudentinfo.html so that admin can enter the new students
def fac_addstudentinfo(request):
    return render(request,"facultyapp/addstudentinfo.html")



#adding the new student details to database  and rendering dashboard.html
def fac_addstudentinfoSubmit(request):
    a_username=request.POST["auth_username"]
    a_email=request.POST["auth_email"]
    a_passwd=request.POST["auth_passwd"]

    s_usn=request.POST["stu_usn"]
    s_name=request.POST["stu_name"]
    s_age=request.POST["stu_age"]
    s_dob=request.POST["stu_dob"]
    s_branch=request.POST["stu_branch"]
    s_sem=request.POST["stu_sem"]


    auth = User.objects.create_user(username=a_username,email=a_email,password=a_passwd)
    auth.save()
    print(auth.id)
    lid=auth.id
    sid=models.AuthUser.objects.get(id=lid)
    print("\n",sid,"\n")
    
    stud=models.Student(usn=s_usn,name=s_name,age=s_age,dob=s_dob,branch=s_branch,sem=s_sem)
    stud.save()

    stusn=models.Student.objects.get(usn=s_usn)
    strel=models.Studentloginrel(id=sid,usn=stusn)
    strel.save()


    #rendering dashboard.html
    return HttpResponseRedirect('/facultyapp')


#-----------------------------------------------------------
def fac_addmarks(request):
    return render(request,"facultyapp/addmarks.html")


#added to marks table
def fac_addmarksSubmit(request):
    usn=request.POST["stu_usn"]
    totalm=request.POST["stu_totalmarks"]
    obtainedm=request.POST["stu_obtmarks"]
    sgpa=request.POST["stu_sgpa"]
    backlog=request.POST["stu_backlog"]
    sem=request.POST["stu_sem"]

    stusn=models.Student.objects.get(usn=usn)

    marksobj=models.Marks(usn=stusn,totalmarks=totalm,obtmarks=obtainedm,sgpa=sgpa,backlogs=backlog,sem=sem)

    marksobj.save()

    return HttpResponseRedirect('/facultyapp')
    # stud=models.Student(id=sid,usn=s_usn,name=s_name,age=s_age,dob=s_dob,branch=s_branch,sem=s_sem)
    # stud.save()

#-----------------------------------------------------------
def fac_addattendence(request):
    return render(request,"facultyapp/addattendence.html")

#added to attendece table

def fac_addattendenceSubmit(request):
    import math
    usn=request.POST["stu_usn"]
    subcode=request.POST["stu_subcode"]
    subname=request.POST["stu_subname"]
    facname=request.POST["stu_facname"]
    att=request.POST["stu_att"]

    if(request.POST["stu_ia1"]==''):
        ia1=0
    else:
        ia1=float(request.POST["stu_ia1"])
    if(request.POST["stu_ia2"]==''):
        ia2=0
    else:
        ia2=float(request.POST["stu_ia2"])
    if(request.POST["stu_ia3"]==''):
        ia3=0
    else:
        ia3=float(request.POST["stu_ia3"])
    if(request.POST["stu_assignment"]==''):
        assignment=0
    else:
        assignment=float(request.POST["stu_assignment"])


  
    finalia=math.ceil(((ia1+ia2+ia3)/3)+assignment)
    stusn=models.Student.objects.get(usn=usn)
    # attobj=models.Attendence(usn=stusn,subcode=subcode,subname=subname,facultyname=facname,attpercent=att,ia1=ia1,ia2=ia2,ia3=ia3,finalia=finalia,assignment=assignment)
    try:
        attobj=models.Attendence.objects.get(usn=stusn,subcode=subcode)
        attobj.ia1=ia1
        attobj.ia2=ia2
        attobj.ia3=ia3
        attobj.finalia=finalia
        attobj.assignment=assignment
        attobj.attpercent=att
    except:
        attobj=models.Attendence(usn=stusn,subcode=subcode,subname=subname,facultyname=facname,attpercent=att,ia1=ia1,ia2=ia2,ia3=ia3,finalia=finalia,assignment=assignment)
    attobj.save()

    return HttpResponseRedirect('/facultyapp')
#-----------------------------------------------------------
def semester(request,sem):
    print(sem)
    auth=models.AuthUser.objects.filter(is_superuser =0).values()
    st=models.Student.objects.filter(sem=sem).values()
    stlgrel=models.Studentloginrel.objects.values()
    print(auth)
    print("\n",st)
    context={
        "auth":auth,
        "student":st,
        "stlg":stlgrel,

    }
    template = loader.get_template('facultyapp/studentsemdash.html')
    return HttpResponse(template.render(context, request))






#-----------------------------------------------------------
#editing the student details in editdata.html
def editdata(request,usn):
    stlg=models.Studentloginrel.objects.filter(usn=usn).values_list('id')
    print("-----------------------------------------------")
    print(int(stlg[0][0]))
    id=int(stlg[0][0])
    print("-----------------------------------------------")


    auth=models.AuthUser.objects.get(id=id)
    # strel=models.Studentloginrel.objects.filter(id=id).values_list('usn')
    # print(strel)
    # print(strel[0][0])
    # usn=(strel[0][0]).strip()
    st = models.Student.objects.get(usn=usn)
    att=models.Attendence.objects.filter(usn=usn).values()
    marks=models.Marks.objects.filter(usn=usn).values()
    print(st)
    context={
        "id":id,
        "auth":auth,
        "student":st,
        "att":att,
        "marks":marks,
    }
    template = loader.get_template('facultyapp/editdata.html')
    return HttpResponse(template.render(context, request))


#saving the edited student data in database and rendering dashboard.html
def editdataSubmit(request,id):
    a_username=request.POST["auth_username"]
    a_email=request.POST["auth_email"]
    # a_passwd=request.POST["auth_passwd"]

    # s_usn=request.POST["stu_usn"]
    s_name=request.POST["stu_name"]
    s_age=request.POST["stu_age"]
    s_dob=request.POST["stu_dob"]
    s_branch=request.POST["stu_branch"]
    s_sem=request.POST["stu_sem"]



    authdata=models.AuthUser.objects.get(id=id)
    # authdata.delete()
    # studata=models.Student.objects.get(id=id)
    # studata.delete()
    authdata.username=a_username
    authdata.email=a_email
    authdata.save()

    stlg=models.Studentloginrel.objects.filter(id=id).values_list('usn')
    usn=(stlg[0][0]).strip()
    st=models.Student.objects.get(usn=usn)
    # st.usn=s_usn
    st.name=s_name
    st.age=s_age
    st.dob=s_dob
    st.branch=s_branch
    st.sem=s_sem
    st.save()

    # strel=models.Studentloginrel.objects.get(id=id)
    # stlgrelusn=models.Student.objects.get(usn=s_usn)
    # print(stlgrelusn)
    # strel.usn=stlgrelusn
    # strel.save()




    # authobj = User.objects.create_user(id=id,username=a_username,email=a_email,password=a_passwd)
    # authobj.save()
    # print(authobj.id)

    # aid=models.AuthUser.objects.get(id=id)
    # print(aid)
    # studobj=models.Student(usn=s_usn,name=s_name,age=s_age,dob=s_dob,branch=s_branch,sem=s_sem)
    # studobj.save()

    # stlgrelusn=models.Student.objects.get(usn=s_usn)
    # print(stlgrelusn)
    # strel=models.Studentloginrel(id=aid,usn=stlgrelusn)
    # strel.save()



    #passing auth and student details to dashboard.html
    auth=models.AuthUser.objects.all().values()
    st=models.Student.objects.all().values()
    context={
        "auth":auth,
        "student":st
    }
    return HttpResponseRedirect('/facultyapp')


#deleting student details and rendering dashboard.html
def deletedata(request,usn):
    stlg=models.Studentloginrel.objects.filter(usn=usn).values_list('id')
    id=int(stlg[0][0])
    auth=models.AuthUser.objects.get(id=id)
    # models.AuthUser.objects.all().values()
    auth.delete()
    student=models.Student.objects.get(usn=usn)
    sem=student.sem
    print(sem)
    student.delete()
    return HttpResponseRedirect(f'/facultyapp/semester/{sem}')



def deleteattendencedata(request,aid):
    attobj=models.Attendence.objects.get(aid=aid)
    usnobj=models.Attendence.objects.filter(aid=aid).values_list('usn')
    print("------------------------")
    print(usnobj)
    usn=usnobj[0][0].strip()
    print(usn)
    print("==========================")
    attobj.delete()
    return HttpResponseRedirect(f'/facultyapp/semester/editdata/{usn}')


def deletemarksdata(request,mid):
    marksobj=models.Marks.objects.get(mid=mid)
    usnobj=models.Marks.objects.filter(mid=mid).values_list('usn')
    usn=usnobj[0][0].strip()
    marksobj.delete()
    return HttpResponseRedirect(f'/facultyapp/semester/editdata/{usn}')