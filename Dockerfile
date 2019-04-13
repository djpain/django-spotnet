from python:2.7


WORKDIR /usr/src/app

COPY . .
ENV DJANGO=1.4
#RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -q Django==$DJANGO
RUN pip install pep8
RUN pip install pytz pycrypto
RUN pip install https://github.com/dcramer/pyflakes/tarball/master
#RUN pip install -q -e . --use-mirrors
RUN python example_project/manage.py test
#COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]