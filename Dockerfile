FROM python:3.8

CMD [ "wget", "-qO-", "https://ipecho.net/plain", ";", "echo" ]
