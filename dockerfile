FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python","coolsite/manage.py","runserver", "192.168.1.241:8000"]
# CMD [ "/bin/bash" ]