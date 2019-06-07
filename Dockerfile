FROM python:3.7

ENV FLASK_APP=timestamper.py
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt
CMD [ "gunicorn", "-b", "0.0.0.0:8000", "timestamper:app" ]
EXPOSE 8000
