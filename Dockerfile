FROM postgres:alpine

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres
#Set documize environment variables.
ENV DOCUMIZEDB='host=localhost port=5432 sslmode=disable user=postgres password=postgres dbname=postgres'
ENV DOCUMIZEDBTYPE=postgresql
ENV DOCUMIZESALT=95Rcecb8a8k71188d
ENV DOCUMIZEPORT=8080

EXPOSE 8080

# Get the documize binary
RUN	wget -O /bin/documize https://github.com/documize/community/releases/download/v1.76.2/documize-community-linux-amd64 \
  && chmod +x /bin/documize
