FROM nginx:latest

# Salin file nginx.conf ke dalam container
COPY nginx.conf /etc/nginx/nginx.conf

# Salin file index.html ke dalam direktori default Nginx
COPY simple-app/index.html /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
