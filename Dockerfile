FROM python:3.8

EXPOSE 80

WORKDIR /app
RUN pip install django
RUN django-admin startproject sampleApp
WORKDIR /app/sampleApp
RUN python manage.py migrate

CMD python manage.py runserver 0:80