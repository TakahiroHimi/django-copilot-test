FROM python:3.8

EXPOSE 80

WORKDIR /app
RUN pip install django
RUN django-admin startproject sampleApp
WORKDIR /app/sampleApp
RUN sed -i -e "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \[\"*\"\]/" ./sampleApp/settings.py
RUN python manage.py migrate

CMD python manage.py runserver 0:80