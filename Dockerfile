FROM centos:centos7
RUN yum update -y
RUN yum upgrade -y
RUN yum install python3 -y 
RUN mkdir /app
COPY . /app/
CMD [ "python3" , "/app/demo.py" ]