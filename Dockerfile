FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUNpython manage.py migrate
COPY . /app/
