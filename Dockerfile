    FROM python:3.9.21-bookworm
    WORKDIR /app
    COPY requirements.txt .
    RUN python -m pip install -r requirements.txt
    COPY . .
    CMD [ "gunicorn","--bind", "0.0.0.0:4000", "app:app"] 