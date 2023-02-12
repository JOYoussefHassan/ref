#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys


def main():
    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'django_ref.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()
####################################
# CDP (Creation of Django Project) #
####################################
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Create django project |
# -------------------------
# [1] - django-admin startproject mysite                                                                        ===> to create django project
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Files |
# ---------
# [1] - ./manage.py                                                                                             ===> to run in terminal e.g. runserver, startapp _appName, migrate, ... (A command-line utility that lets you interact with
#                                                                                                                    this Django project in various ways)
# [2] - ./_projectName/settings.py                                                                              ===> it is edited by migrate and must the TIME_ZONE (Settings/configuration for this Django project)
# [3] - ./_appName/admin.py                                                                                     ===> to add data in adminstratio page
# [4] - ./_appName/views.py                                                                                     ===> the viewer website file
# [5] - ./_projectName/urls.py                                                                                  ===> to set the link of website and admin page (The URL declarations for this Django project; a “table of contents” of your
#                                                                                                                    Django-powered site)
# [6] - ./_appName/urls.py                                                                                      ===> to configuraion the links of website
# [7] - ./_appName/models.py                                                                                    ===> to add tables in database
# [8] - ./_appName/templates/_appName/index.html                                                                ===> it is html page linked with django project
# [9] - ./_appName/templates/_appName/_funcNamme.html                                                           ===> to add another pages
# 
# [10] - ./_projectName/__init__.py                                                                             ===> (An empty file that tells Python that this directory should be considered a Python package)
# [11] - ./_projectName/asgi.py                                                                                 ===> (An entry-point for ASGI-compatible web servers to serve your project)
# [12] - ./_projectName/wsgi.py                                                                                 ===> (An entry-point for WSGI-compatible web servers to serve your project)
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

###############
# ./manage.py #
###############
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Terminal |
# ------------
# [1] - python ./manage.py runserver _ip:_port                                                                  ===> to run the server
# [2] - python ./manage.py startapp _appName                                                                    ===> to create poll application to view the website
# [3] - python ./manage.py shell                                                                                ===> to test code
# [4] - python ./manage.py makemigrations _appName                                                              ===> to migrate table in database with the project
# [5] - python ./manage.py sqlmigrate _appName 0001                                                             ===> to show code creation of table in database with sql code
# [6] - python ./manage.py migrate                                                                              ===> to migrate all data was created
# [7] - python ./manage.py createsuperuser                                                                      ===> to create adminstration user
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Modules |
# -----------
# [1] - django.shortcuts                                                                                        ===> to add shortcut functions (./_projectName/views.py)
#       [1]- render(request, "_file.html", _dct)                                                                ===> to print data in html file, take data as key in html
# [2] - django.urls                                                                                             ===> (./_appName/urls.py, ./_projectName/urls.py)
#       [1] - path(_link, _fileImported._httpResponseFunction, name = "_name")                                  ===> to edit the path in the link, to import urls configuratios
#                                                                                                                    path("_link", include("_appName.urls"))
#       [2] - include(_file)                                                                                    ===> to include python file, to add urls configuration
# [3] - django.contrib                                                                                          ===> to import the adminstration of project (./_appName/admin.py, ./_projectName/urls.py)
#       [1] - admin                                                                                             ===> to import adminstration functions
# [4] - django.db                                                                                               ===> to import database functions (./_appName/models.py)
#       [1] - models                                                                                            ===> to add tables in database
# [5] - django.utils                                                                                            ===> to import django utils (./_appName/models.py)
#       [1] - timezone                                                                                          ===> to get the time zone
# [6] - django.http                                                                                             ===> to add protocalls functions (./_appName/views.py)
#       [1] - HttpResponse                                                                                      ===> to print the data
#       [2] - Http404                                                                                           ===> if not found
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

##########################
# ./_projectName/urls.py #
##########################
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Modules |
# -----------
# [2], [3]
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Functions |
# -------------
# [1] - path("_link", include("_appname.urls"))                                                                 ===> to configuration the home link and include the urls.py of _appName
# [2] - path("_link", admin.site.urls)                                                                          ===> to configuration the adminstration link and include the urls.py of django
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

##############################
# ./_projectName/settings.py #
##############################
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Modules |
# -----------
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Functions |
# -------------
# [1] - INSTALLED_APPS                                                                                          ===> apps in the projects after megration
# [2] - DATABASES                                                                                               ===> is the database used and file location
# [3] - TIME_ZONE                                                                                               ===> it is the time zone to adjustfy the time according the zone
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

###########################
# ./_projectName/admin.py #
###########################
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Modules |
# -----------
# [3]
# [1] - .models                                                                                                 ===> to add database tables creations in admin page
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Functions |
# -------------
# [1] - admin.site.register(_database)                                                                          ===> to import data to database
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

######################
# ./_appName/urls.py #
######################
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Modules |
# -----------
# [2], [3]
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Functions |
# -------------
# [1] - path("_link", include("_appname.urls"))                                                                 ===> to configuration the home link and include the urls.py of _appName
# [2] - path("_link", admin.site.urls)                                                                          ===> to configuration the adminstration link and include the urls.py of django
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

########################
# ./_appName/models.py #
########################
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Modules |
# -----------
# [4], [5]
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Functions |
# -------------
# [1] - class _tableName(models.Model) :                                                                        ===> to create table
# [2] - _var = models._function                                                                                 ===> to create column
# [3] - def __str__(self) :                                                                                     ===> to set string if get the data of the table
#           return self._var
# [4] - def _functionName(self) :                                                                               ===> to get function if get the data
# 
# [1] - 
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
