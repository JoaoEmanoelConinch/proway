FROM python:3.11-slim
#---------------------------------------------------
RUN apt-get update --fix-missing
RUN apt-get install -y libpq-dev gcc
#---------------------------------------------------
EXPOSE 8080
WORKDIR /code
COPY . /code
#---------------------------------------------------
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
#---------------------------------------------------
CMD [ "./startup.sh" ]