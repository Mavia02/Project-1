# Use the lightweight Nginx image
FROM nginx:alpine

# Copy your HTML file to Nginx's default serving directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080 to access the application
EXPOSE 8080

# Set Nginx to listen on port 8080
RUN echo 'server { listen 8080; location / { root /usr/share/nginx/html; index index.html; } }' > /etc/nginx/conf.d/default.conf
