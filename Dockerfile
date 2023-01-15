FROM python:3.8

RUN mkdir /opt/app
WORKDIR /opt/app


RUN wget http://security.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1.5_amd64.deb
RUN apt-get install ./multiarch-support_2.27-3ubuntu1.5_amd64.deb


RUN apt-get install -y curl

CMD [ "wget", "-qO-", "https://ipecho.net/plain", ";", "echo" ]
