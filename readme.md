# Instructions

Replace <app_name>.

Run:

```
docker build -t <image_name>:<tag> .
```

Run:

```
docker run -d -p 8888:80 -e API_BASE_URL='http://127.0.0.16' <image_name>:<tag>
```