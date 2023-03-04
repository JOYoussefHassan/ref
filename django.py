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
# django.contrib.admin.site.register(_modelName_)

# models.py
# ---------
# import django.db, django.utils
#
# class _modelName_(django.db.models.Model):
#     _columnName_ = django.db.models.CharField(max_length=_int_)
#     _columnName_ = django.db.models.DateTimeField('date published')
#     _columnName_ = django.db.models.ForeignKey(_modelName_, on_delete=django.db.models.CASCADE)
#     _columnName_ = django.db.models.IntegerField(default=_int_)
#
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
# {% if latest_question_list %}
# {% else %}
# {% endif %}
#
# {% for question in latest_question_list %}
#     {{ forloop.counter }}
# {% endfor %}
#
# {{ _contextVar_ }}
#
# {% url '_appName_:_indexName_' _pathArgName_ %}