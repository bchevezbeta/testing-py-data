from django.conf.urls import url

from . import views

app_name = 'poc'
urlpatterns = [
    url(r'^$', views.index, name='index'),

    url(r'^phrase/$', views.phrase, name='phrase'),

    url(r'^locale/$', views.locale, name='locale'),

    url(r'^process/$', views.process, name='process'),

    url(r'^process_intl/$', views.process_intl , name='process_intl'),

    url(r'^all/$', views.getall, name='getall'),
]