# Dockerfile

# Use the official Nginx image as the base image
FROM nginx:latest

# Copy Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML file to the default Nginx web root directory
COPY simple-app /usr/share/nginx/html

# Expose port 80 to make the web server accessible
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
