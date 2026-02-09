# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy your static files to the Nginx html directory
# This assumes your HTML/CSS files are in the same folder as the Dockerfile
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]