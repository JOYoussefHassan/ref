# django-admin startproject _projectName_
# python manage.py runserver _ip_:_port_
# python manage.py startapp _appName_
# -----------
# python manage.py makemigrations _appName_
# python manage.py sqlmigrate _appName_ _int_
# python manage.py migrate
# -----------
# python manage.py shell
# -----------
# python manage.py createsuperuser
# -----------
# python manage.py test _appName_


# sudo systemctl _command_ apache2
# [1] - _command_
#     [1] - start
#     [2] - stop
#     [3] - restart


# service mysql _command_
# [1] - _command_
#     [1] - start
#     [2] - stop
#     [3] - restart

# /etc/apache2/sites-available/000-default.conf
# ---------------------------------------------
# Alias /static /media/sf_sharedfolder2/zayelketab/static
# <Directory /media/sf_sharedfolder2/zayelketab/static>
#     Require all granted
# </Directory>
# 
# <Directory /media/sf_sharedfolder2/zayelketab/zayelketab>
#     <Files wsgi.py>
#         Require all granted
#     </Files>
# </Directory>

# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | urls.py |
# -----------
# app_name = '_appName_'
# urlpatterns = [
#     django.urls.path('_pathFormate_', _viewApp_, name='_urlName_'),
#     ...
#     [1] - _pathFormate_
#         [1] - _adminPathString_
#         [2] - _pathString_
#         [3] - _pathString_<_datatype_:_pathArgName_>_pathString_
#     [2] - _viewApp_
#         [1] - django.contrib.admin.site.urls
#         [2] - django.urls.include('_appName_._urlFile_')
#         [3] - views._appFunctonName_
#         [4] - views._appGenericName_.as_view()
#         [5] - django.views.generic._genericType_.as_view(_genericArgument_, ...)
#             [1] - _genericArgument_
#                 [1] - template_name = '_htmlName_'
#                 [2] - extra_context = _context_
# ]
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | settings.py |
# ---------------
# INSTALLED_APPS = [
#     '_appName_.apps._AppName_Config',
#     '_appName_',
#
#     'django.contrib.admin',
#     'django.contrib.auth',
#     'django.contrib.contenttypes',
#     'django.contrib.sessions',
#     'django.contrib.messages',
#     'django.contrib.staticfiles',
# ]
#
# TEMPLATES = [
#     {
#         'BACKEND': 'django.template.backends.django.DjangoTemplates',
#         'DIRS': [
#             BASE_DIR / '_path_',
#         ],
#         'APP_DIRS': True,
#         'OPTIONS': {
#             'context_processors': [
#                 'django.template.context_processors.debug',
#                 'django.template.context_processors.request',
#                 'django.contrib.auth.context_processors.auth',
#                 'django.contrib.messages.context_processors.messages',
#             ],
#         },
#     },
# ]
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | admin.py |
# ------------
# class _inlineAdminClassName_(django.contrib.admin._inlineType_):
# [1] - _inlineType_
#     [1] - StackedInline
#     [2] - TabularInline
#     model = _modelName_                                                                                   ===> another model
#     extra = _intRepeat_
#
# class _adminClassName_(django.contrib.admin.ModelAdmin):
#     list_display = ('_columnModelName_', '_functionModelName_', ...)
#     fields       = ['_columnModelName_', ...]
#     fieldsets    = [('_sectionName_', {'fields': ['_columnModelName_', ...], ...}), ...]
#     inlines      = [_inlineAdminClassName_, ...]
#
# django.contrib.admin.site.register(_modelName_, _adminClassName_)
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | models.py |
# -------------
# class _modelName_(django.db.models.Model):
#     _columnModelName_ = django.db.models._fieldTypeModelName_(_fieldOptionModelName_)
#    ...
#     [1] - _fieldTypeModelName_
#         [1] - CharField(max_length=_int_)
#         [2] - IntegerField()
#         [3] - DateTimeField('_subject_')
#         [4] - BigAutoField()
#         [5] - TextChoices(_value_, ...)                                                                   ===> to access (TextChoices(_value_, ...).choices)
#
#         [5] - ForeignKey(_modelName_, ondelete=django.db._modelNameOnDelete_)                             ===> many to one (model has one model only)
#             [1] - _modelNameOnDelete_
#                 [1] - models.SET_NULL
#                 [2] - models.CASCADE
#         [7] - ManyToManyField(_modelName_, through='_modelName_')
#     [2] - _fieldOptionModelName_
#         [1] - '_data_'                                                                                    ===> the subject of column
#               verbose_name = '_data_'
#         [2] - default      = _data_
#         [3] - null         = _bool_
#         [4] - blank        = _bool_
#         [5] - choices      = [(_key_, _value_), ...]
#         [6] - help_text    = _data_
#         [7] - primary_key  = _bool_
#         [8] - unique       = _bool_
#
#     @django.contrib.admin.display(boolean=_bool_, ordering=_columnModelName_, description='_data_')
#
#     def __str__(self):
#         return self._columnModelName_
#     def _functionModelName_(self):
#         _statement_
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | shell (models.py) |
# ---------------------
# _modelName_.DoesNotExist
#
# _modelSelectVar_ = _modelName_(_tableName_='_data_', ...)
# _modelCreateVar_.get__choicesVar__display()
# _modelCreateVar_.objects.values_list('_columnModelName_', flat=_bool_)
# _modelSelectVar_._columnName_
# _modelSelectVar_._columnName_ = _data_
# _modelSelectVar_.save()
# _modelSelectVar_.delete()
#
# _modelSelectVar_ = get_object_or_404(_tableName_='_data_', ...)
#
# _modelName_.objects.all()
# _modelName_.objects.filter(_tableName_=_data_, _tableName__function_=_data_)
# _modelName_.objects.order_by('_data_')
# _modelName_.objects.get(_tableName_=_data_, _tableName__function_=_data_)
# _modelSelectVar_._modelName__set.count()
# _modelSelectVar_._modelName__set.all()
#
# _modelCreateVar_ = _modelSelectVar_._modelName__set.create(_tableName_='_data_', ...)
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | views.py |
# ------------
# def _appFunctonName_(_request_, _pathArgName_, *_args_, **_keywordArgs_):
#     [1] - _request_
#         [1] - _request_.GET['_var_']
#         [2] - _request_.POST['_var_']
#
#     _templateName_ = django.template.loader.get_template('_htmlPath_')
#     return _actionAppFunctonName_
#     [1] - _actionAppFunctonName_
#         [1] - django.http.HttpResponse(_data_)
#             [1] - _data_
#                 [1] - _data_
#                 [2] - _templateName_.render(_context_, _request_)
#         [2] - django.shortcuts.render(_request_, '_htmlPath_', _context_)
#         [3] - django.http.HttpResponseRedirect(_path_)
#             [1] - _path_
#                 [1] - _path_
#                 [1] - reverse('_appName_:_appFunctonName_', args=(_pathArgName_, ...))
#     
#     raise django.http.Http404(_errStr_)
#
# class _appGenericName_(django.views.generic._genericType_):
#     [1] - _genericType_
#         [1] - TemplateView
#             template_name   = '_htmlPath_'
#             template_engine = _engineType_
#             response_class  = _response_
#             conten_type     = 'text/html'
#             def get_context_data(self, ...):
#                 _statement_
#         [2] - DetailView
#             model = _modelName_
#             template_name = '_htmlPath_'
#         [3] - ListView
#             template_name = '_htmlPath_s'
#             context_object_name = 'latest_question_list'
#             def get_queryset(self):
#                 return _dataModelName_
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | tests.py |
# ------------
# class _testClassName_(django.test.TestCase):
#     def _functionTestClassName_(self):
#         _modelVar_ = _modelName_(_columnModelName_='_data_', ...)
#         _clientVar_ = self.client.get('_path_')
#         self._checkTestClassName_
#         [1] - _checkTestClassName_
#             [1] - assertIs(_modelVar_._functionModelName_(), _returnDataWanted_)
#             [2] - assertEqual(_var_, _dataWanted_)
#             [3] - assertContains(_var_, _dataWanted_)
#             [4] - assertQuerysetEqual(_varArray_, _array_)
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | shell (models.py) |
# ---------------------
# django.test.utils.setup_test_enviroment()
#
# _clientVar_ = django.test.utils.Client()
#
# _responseClientVar_ = _clientVar_.get('_path_')
# _responseClientVar_.status_code
# _responseClientVar_._context_[_data_]

# urls.py
# -------
# from _appName_ import views
# import django.urls, django.contrib, django.views.generic
#
# app_name = '_appName_'
# urlpatterns = [
#     django.urls.path('_path_', views.index, name='_indexName_'),
#     ...
#     django.urls.path('<_datatype_:_pathArgName_>', views.index, name='_indexName_'),
#     ...
#     django.urls.path('_path_', django.urls.include('polls.urls')),
#     ...
#     django.urls.path('admin/', django.contrib.admin.site.urls),
#     ...
#     django.urls.path('admin/', django.views.generic.TemplateView.as_view(template_name='_path_/_index_.html', extra_context={_context_})),
#     ...
#     django.urls.path('_path_', views._amendClass_.as_view(template_name='_path_/_index_.html', extra_context={_context_}), name='index'),
#     ...
# ]

# settings.py
# -----------
# INSTALLED_APPS = [
#     '_appName_.apps._AppName_Config',
#     '_appName_',
#
#     'django.contrib.admin',
#     'django.contrib.auth',
#     'django.contrib.contenttypes',
#     'django.contrib.sessions',
#     'django.contrib.messages',
#     'django.contrib.staticfiles',
# ]

# admin.py
# --------
# import django.contrib
#
# from .models import _modelName_
#
# class _inlineAdminClassName_(admin.StackedInline):
#     model = _modelName_
#     extra = _intRepeat_
# class _inlineAdminClassName_(admin.TabularInline):
#     model = _modelName_
#     extra = _intRepeat_
# class _adminClassName_(admin.ModelAdmin):
#     list_display = ('_columnName_', '_functionModelName_', ...)
#     fields       = ['_columnName_', ...]
#     fieldsets    = [(_sectionName_, {'fields': ['_columnName_', ...], ...}), ...]
#     inlines      = [_inlineAdminClassName_]
# django.contrib.admin.site.register(_modelName_, _adminClassName_)

# models.py
# ---------
# import django.db, django.utils, django.contrib
#
# class _modelName_(django.db.models.Model):
#     _columnName_ = django.db.models.CharField(max_length=_int_)
#     _columnName_ = django.db.models.DateTimeField('date published')
#     _columnName_ = django.db.models.ForeignKey(_modelName_, on_delete=django.db.models.CASCADE)
#     _columnName_ = django.db.models.IntegerField(default=_int_)
#     _columnName_ = django.db.models._fieldTypeModel_(null=_bool_, blank=_bool_)
#
#     @django.contrib.admin.display(boolean = _bool_, ordering = _dataDependentOrder_, description = '_data_')
#     def __str__(self):
#         return self._columnName_
#     def _functionModelName_(self):
#         _statement_

# views.py
# --------
# import django.http, django.template, django.shortcuts, django.views
#
# from _appName_.models import _modelName_
#
# _modelName_.DoesNotExist
#
# _modelSelectVar_ = _modelName_(_tableName_='_data_', ...)
# _modelSelectVar_._columnName_
# _modelSelectVar_._columnName_ = _data_
# _modelSelectVar_.save()
# _modelSelectVar_.delete()
#
# _modelSelectVar_ = get_object_or_404(_tableName_='_data_', ...)
#
# _modelName_.objects.all()
# _modelName_.objects.filter(_tableName_=_data_, _tableName__function_=_data_)
# _modelName_.objects.order_by('_data_')
# _modelName_.objects.get(_tableName_=_data_, _tableName__function_=_data_)
# _modelSelectVar_._modelName__set.count()
# _modelSelectVar_._modelName__set.all()
#
# _modelCreateVar_ = _modelSelectVar_._modelName__set.create(_tableName_='_data_', ...)
#
#
#
# def _index_(_request_, _pathArgName_, *_arguments_, **_keywordArguments_):
#     _request_.GET['_var_']
#     _request_.POST['_var_']
#
#     reverse('_appName_:_indexName', args=(_pathArgName_, ...))
#
#     _templateName_ = django.template.loader.get_template('_path_/_index_.html')
#     return django.http.HttpResponse(template.render({_context_}, _request_))
#     return django.http.HttpResponseRedirect(_path_)
#     return django.shortcuts.render(_request_, '_path_/_index_.html', {_context_})
#     raise django.http.Http404(_errStr_)
#
# class _amendClassName_(django.views.generic.TemplateView):
#     template_name   = '_path_/_index_.html'
#     template_engine = _engineType_
#     response_class  = {_context_}
#     conten_type     = 'text/html'
#     def get_context_data(self, ...):
#         _statement_
#
# class _amendClassName_(django.views.generic.DetailView):
#     model = _modelName_
#     template_name = '_path_/_index_.html'
#
# class _amendClassName_(django.views.generic.ListView):
#     template_name = '_path_/_index_.html'
#     context_object_name = 'latest_question_list'
#     def get_queryset(self):
#         return _ModelData_

# tests.py
# --------
# from .models import _modelName_
#
# class _testClassName_(django.test.TestCase):
#     def _testFunctionTestClassName_(self):
#         _modelName_(_tableName_='_data_', ...)
#         _clientVar_ = self.client.get('_path_')
#         self.assertIs(_modelName_._functionModelName_(), _returnDataWanted_)
#         self.assertEqual(_var_, _dataWanted_)
#         self.assertContains(_var_, _dataWanted_)
#         self.assertQuerysetEqual(_varArray_, [_array_])

# shell (test)
# ------------
# import django.test, django.test.utils
# django.test.utils.setup_test_enviroment()
#
# _clientVar_ = django.test.utils.Client()
#
# _responseClientVar_ = _clientVar_.get('_path_')
# _responseClientVar_.status_code
# _responseClientVar_._context_[_data_]

# _index_.httml
# -------------
# {% load static %}
#
# {% block _blockName_ %}
# {% endblock %}
#
# {% if latest_question_list %}
# {% else %}
# {% endif %}
#
# {% for question in latest_question_list %}
#     {{ forloop.counter }}
#     {{ choice.votes|pluralize }}
# {% endfor %}
#
# {{ _contextVar_ }}
#
# {% url '_appName_:_indexName_' _pathArgName_ %}
