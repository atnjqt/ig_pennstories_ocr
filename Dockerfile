FROM python:3.8-slim

COPY GetComments.py /app/GetComments.py

COPY configs /app/configs

WORKDIR /app

RUN pip install -r /app/configs/requirements.txt

# ENTER INSTAGRAM URL AS ARGUMENT:
CMD ["python3", "GetComments.py", "https://www.instagram.com/p/CBn-zFWjDIf"]