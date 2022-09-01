FROM python:3.10-slim-buster

WORKDIR /src

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY inference.py inference.py

ENTRYPOINT ["python3","inference.py"]