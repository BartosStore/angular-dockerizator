# TL;DR;

Move files into Angular project.

Replace <app_name> in Dockerfile.

Run:
```
docker-compose up -d --build
```

# Instructions

Move files into Angular project.

Replace <app_name> in Dockerfile.

Alternatively update ENVs in .sh file.

Run:

```
docker build -t <image_name>:<tag> .
```

Run:

```
docker run -d -p 8888:80 -e API_BASE_URL='http://127.0.0.16' <image_name>:<tag>
```

# Troubleshooting

Recreate containers:
```
docker-compose up -d --build --force-recreate
```
