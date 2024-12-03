FROM python:3

WORKDIR /data

# Install setuptools and distutils
RUN apt-get update && apt-get install -y python3-distutils python3-setuptools

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

