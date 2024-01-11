FROM python:3.9
WORKDIR /app1

COPY requirements.txt /app1/
RUN pip3 install -r requirements.txt

COPY . /app1

CMD flask run -h 0.0.0.0 -p 10000 & python3 main.py
