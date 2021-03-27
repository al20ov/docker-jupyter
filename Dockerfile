FROM python:3.8-buster

WORKDIR /root

RUN pip install --no-cache-dir jupyter jupyterthemes

RUN jt -t monokai

COPY ./start.sh .

EXPOSE 8080

CMD [ "./start.sh" ]
