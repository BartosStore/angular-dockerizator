# Instructions

Move into Angular project.

Replace <app_name>.

Alternatively update ENVs in .sh file.

Run:

```
docker build -t <image_name>:<tag> .
```

Run:

```
docker run -d -p 8888:80 -e API_BASE_URL='http://127.0.0.16' <image_name>:<tag>
```