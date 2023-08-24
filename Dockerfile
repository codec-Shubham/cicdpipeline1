# Use the official Nginx base image
FROM nginx:alpine

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]