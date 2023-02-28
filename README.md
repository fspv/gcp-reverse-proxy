Running
=======

Deploy to cloud run (will fail first time)

```
gcloud run deploy
```

Set environment variable `PROXY_TO` to whatever you want the proxy to be pointing to and redeploy the service.

Set environment variable `AUTH_TOKEN` in case you want to add extra header to authenticate proxy on your destination.


Local testing
=======
```
docker build -t test .
docker run -e PROXY_TO=https://127.0.0.1 -it test
docker run -e AUTH_TOKEN="1234" -e PROXY_TO=https://127.0.0.1 -it test
```
