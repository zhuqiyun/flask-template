FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_template create-db
RUN flask_template populate-db
RUN flask_template add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_template", "run"]
