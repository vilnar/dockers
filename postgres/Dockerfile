FROM postgres:11

ENV POSTGRES_USER buzz
ENV POSTGRES_PASSWORD buzz
ENV POSTGRES_DB music

COPY musicdatabase/ /tmp/musicdatabase/
COPY init.sql /docker-entrypoint-initdb.d/10-init.sql
EXPOSE 5432
