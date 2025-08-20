# Use a small NGINX
FROM nginx:alpine

# Replace default NGINX content with our page
COPY index.html /usr/share/nginx/html/index.html

# NGINX already listens on 80
EXPOSE 80

# Default CMD from the base image runs nginx -g "daemon off;"
