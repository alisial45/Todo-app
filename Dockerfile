FROM python:3.9.16
RUN  apt-get update
#RUN  apt-get install python3-pip
#RUN mkdir /todoApp
#WORKDIR /todoApp
COPY . .

RUN pip3 install -r requirements.txt
EXPOSE 8000
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
