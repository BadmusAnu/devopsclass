# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your custom HTML file to the Nginx document root
COPY index.html /usr/share/nginx/html/index.html

# Create a custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to listen for incoming HTTP requests
EXPOSE 80

# Define an environment variable for the developer's name
ENV DEVELOPER_NAME "Your Name"

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
