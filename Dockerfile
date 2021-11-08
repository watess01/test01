# syntax=docker/dockerfile:1

FROM python:latest

# WORKDIR /app

COPY ./app/*.py /

# expose ports using the EXPOSE keyword in the Dockerfile or the --expose flag to docker run. 
# Exposing ports is a way of documenting which ports are used, but does not actually map or open any ports. Exposing ports is optional.
# publish the port using -p
EXPOSE 8000

CMD ["python", "main.py"]