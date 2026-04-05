FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/csut.conf

# Copy static files
COPY public/ /usr/share/nginx/html/

# Create directory for ACME challenges
RUN mkdir -p /var/www/certbot

EXPOSE 80 443
