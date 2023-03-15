FROM postgres:latest

ENV POSTGRES_PASSWORD mypassword
ENV POSTGRES_DB add3database

COPY init.sql /docker-entrypoint-initdb.d/