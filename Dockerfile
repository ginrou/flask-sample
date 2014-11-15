#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# install python libraries
RUN pip install Flask

# update source code
RUN rm -rf /var/www
RUN git clone git@github.com:ginrou/flask-sample.git /var/www
RUN ls /var/www

# post code commands
WORKDIR /var/www

EXPOSE 5000
ENTRYPOINT ["python", "/var/www/app.py"]
