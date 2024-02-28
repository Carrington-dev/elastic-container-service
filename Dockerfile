from python:3.12.1

LABEL version="0.0.1"
LABEL mantainer="Carrington Muleya <crn96m@gmail.com>"

RUN apt-get update
RUN apt-get upgrade -y

WORKDIR app/

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]