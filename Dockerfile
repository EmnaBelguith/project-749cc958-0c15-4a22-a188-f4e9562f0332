FROM python:3.8-slim-buster
WORKDIR /app
COPY python_project/requirements.txt /app/requirements.txt
COPY python_project/app.py /app/app.py
EXPOSE 5000
ENV FLASK_APP=app.py
CMDBUILD [] # do not include any commands here, as they will be handled separately
CMD ["gunicoorn", "--bind", "0.0.0.0:5000", "app:app"]