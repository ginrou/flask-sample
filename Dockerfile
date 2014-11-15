#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM dockerfile/ubuntu

Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

RUN pip install Flask
RUN mkdir -p /var/www
ADD . /var/www
EXPOSE 5000
ENTRYPOINT ["python", "/var/www/app.py"]
