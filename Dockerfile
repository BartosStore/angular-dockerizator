# Instructions:
# replace <app_name>
# docker build -t <image_name>:<tag> .
# docker run -d -p 8888:80 -e API_BASE_URL='http://127.0.0.16' <image_name>:<tag>

## Stage Build
# Get image from registry
FROM node:12.7-alpine AS builder

# Setup workdir
WORKDIR /usr/src/app

# Copy dependency files
COPY package.json package-lock.json ./

# Install libraries
RUN npm install

# Copy remaining files - source code
COPY . .

# Compile app
RUN npm run build

## Stage Run
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /usr/src/app/dist/<app_name> /var/www/html

COPY entrypoint.sh ./
ENTRYPOINT ["./entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]