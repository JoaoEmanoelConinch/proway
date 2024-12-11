FROM python:3.11-slim
#---------------------------------------------------
RUN apt-get update
RUN apt-get install -y libpq-dev gcc
#---------------------------------------------------
EXPOSE 8080
WORKDIR /code
COPY .. /code
#---------------------------------------------------
RUN pip3 install -r requirements.txt
#---------------------------------------------------
CMD [ "/code/startup.sh" ]