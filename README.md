# documize-docker - DPA
## (Very) Simple documize docker
## documize - postgres - alpine


1. Edit the environment variables to the ones you prefer,
2. Build and run with;

```
cd documize-docker
docker build . -t dpa
docker run -d --name documize -p 80:8080 -v pgdata:/var/lib/postgresql/data -it dpa && \
docker exec -d documize /bin/documize
```

Enjoy!
