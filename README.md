# STUDENT INFORMATION

## Description:
* Here the faculty can add the information of the students
* Students can also view the acadamic information about them

## Tech stack:
* Django (high-level Python web framework)
* MySQL (used for relational database management system (RDBMS))
* HTML
* CSS
* JavaScript


## Installation steps:

* Install vscode IDE    ->[vscode download](https://code.visualstudio.com/Download)

* install xampp   ->[xampp download](https://downloads.sourceforge.net/project/xampp/XAMPP%20Windows/7.3.33/xampp-portable-windows-x64-7.3.33-0-VC15-installer.exe?ts=gAAAAABjdOY_mJ1ufb-T1DCTb9nWaH84b2ittwQDhlvUyYzGnV-lnyyP9Y4CJBAp1eUHbykLNF5EvzKA5V2jYQUAUPTK5Ia7qg%3D%3D&use_mirror=onboardcloud&r=)

* install Python 3.11.1  ->[python 3.11.3](https://www.python.org/downloads/)

* install the above project

* open the project in vscode

* run the command in the terminal and it should be opened in studentinformation folder -> pip install mysqlclient

* run -> pip install django 

* launch the XAMPP control panel and start the Apache and MySQL servers by clicking on the "Start" button next to each service and click on admin so that you redirected to default browser

* click on "new" on phpMyAdmin page and go to import section and click on browse and select the "studentinformation.sql" file and click on "import" button on same page. now the database with tables has been visible on sidebar

* come back to terminal and run the following commands one by one
   * python manage.py makemigrations
   * python manage.py migrate
   * python manage.py runserver

* now go to browser and type http://127.0.0.1:8000/ and the project will start


## Libraries and dependencies:
* python

* django

* xampp 

* vscode (or any IDE is ok)

* mysql (which comes with xampp so no need to install mysql if xampp is installed)

* mysqlclient