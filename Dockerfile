FROM python:3.8-buster

WORKDIR /root

RUN pip install --no-cache-dir jupyter jupyterthemes

RUN jt -t monokai

EXPOSE 8080

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root" ]
