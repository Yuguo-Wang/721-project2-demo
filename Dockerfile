FROM python:3.9 

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /app/

CMD ["python", "/app/app.py"]

