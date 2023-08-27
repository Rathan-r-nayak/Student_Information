from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse
from . import models

# Create your views here.

def studentapp_def(request,id):
    # return render(request,"studentapp/index.html")
    strel=models.Studentloginrel.objects.filter(id=id).values_list('usn')
    usn=(strel[0][0]).strip()
    student = models.Student.objects.get(usn=usn)
    context={
        "stid":id,
        "student":student
    }
    template = loader.get_template('studentapp/index.html')
    return HttpResponse(template.render(context, request))


def studentapp_info(request,id):
    # ob=models.Student.objects.all().values()
    auth=models.AuthUser.objects.get(id=id)
    strel=models.Studentloginrel.objects.filter(id=id).values_list('usn')
    st = models.Student.objects.get(usn=(strel[0][0]).strip())
    print(strel)
    context={
        "auth":auth,
        "student":st,
        "stid":id
    }
    template = loader.get_template('studentapp/info.html')
    return HttpResponse(template.render(context, request))
    # return render(request,"studentapp/info.html")


def studentapp_marks(request,id):
    strel=models.Studentloginrel.objects.filter(id=id).values_list('usn')
    usn=(strel[0][0]).strip()
    student = models.Student.objects.get(usn=usn)
    marks=models.Marks.objects.filter(usn=usn).values()
    print(marks)
    print(strel)
    context={
        "stid":id,
        "student":student,
        "marks":marks,
    }
    template = loader.get_template('studentapp/marks.html')
    return HttpResponse(template.render(context, request))


def studentapp_attendence(request,id):
    strel=models.Studentloginrel.objects.filter(id=id).values_list('usn')
    usn=(strel[0][0]).strip()
    student = models.Student.objects.get(usn=usn)
    attendence=models.Attendence.objects.filter(usn=usn).values()
    # return render(request,"studentapp/attendence.html")
    context={
        "stid":id,
        "student":student,
        "att":attendence,
    }
    template = loader.get_template('studentapp/attendence.html')
    return HttpResponse(template.render(context, request))


def studentapp_faculty(request,id):
    # return render(request,"studentapp/faculty.html")
    context={
        "stid":id
    }
    template = loader.get_template('studentapp/faculty.html')
    return HttpResponse(template.render(context, request))
