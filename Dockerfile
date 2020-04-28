FROM python:stretch
COPY . /usr/local/eks
WORKDIR /usr/local/eks
RUN pip install -r requirements.txt
CMD gunicorn -b :8080 main:APP
