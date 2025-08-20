# Use a small NGINX
FROM public.ecr.aws/nginx/nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80


# Replace default NGINX content with our page
COPY index.html /usr/share/nginx/html/index.html

# NGINX already listens on 80
EXPOSE 80

# Default CMD from the base image runs nginx -g "daemon off;"
