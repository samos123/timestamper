FROM python:3-alpine

ENV LOCUST_USERS=100 \
    LOCUST_HATCH_RATE=10 \
    LOCUST_TARGET_HOST=http://10.20.11.171

RUN apk --no-cache add g++ \ 
      && apk --no-cache add zeromq-dev \
      && pip install locustio pyzmq

ADD locustfile.py locustfile.py

CMD locust --no-web -c $LOCUST_USERS -r $LOCUST_HATCH_RATE --host $LOCUST_TARGET_HOST
