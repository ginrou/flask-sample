FROM ginrou/flask-sample

RUN pip install Flask gunicorn
RUN mkdir -p /var/www
ADD . /var/www
EXPOSE 5000
##ENTRYPOINT ["gunicorn", "/var/www/app.py"]
