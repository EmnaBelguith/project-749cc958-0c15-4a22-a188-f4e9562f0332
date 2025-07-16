Dockerfile:

```dockerfile
FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "app.py"]
```

requirements.txt:

```
# Flask dependencies
pip install flask flask-cors
```

This Dockerfile can be used to build and run a Python Flask application on a standard Linux host. The main app is included in the app.py file, and Flask's CORS middleware enables cross-origin requests.

