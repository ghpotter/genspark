FROM jenkins:lts-jdk11
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN yum -y install $(cat /app/requirements.txt)
COPY . /app/
# Is this how to run jenkins?
CMD ["systemctl restart jenkins"]