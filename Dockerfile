# init a base image (Alpine is small Linux distro)
FROM python:3.6.1-alpine
# define the present working directory
WORKDIR /docker-flask-test
# copy the contents into the working dir
ADD . /docker-flask-test
# run pip to install the dependencies of the flask app
RUN pip install -r requirements.txt
# define the command to start the container
CMD ["python","app.py"]






# # init a base image (Alpine is small Linux distro)
# FROM python:3-alpine
# # define the present working directory
# WORKDIR /docker-flask-test
# # copy the contents into the working dir
# ADD . /docker-flask-test
# # run pip to install the dependencies of the flask app
# RUN apk update
# RUN apk add g++
# RUN pip install --upgrade pip && pip install -r requirements.txt
# # define the command to start the container
# CMD ["python","main.py"]

#Command
# docker image ls
# docker run -p 5000:5000 -d docker-flask-test
# docker stop {imageID}
# docker system prune
