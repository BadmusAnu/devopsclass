# Build the Docker image
docker build -t my-custom-nginx .

# Run the Docker container
docker run -d -p 80:80 --name my-nginx-container my-custom-nginx
