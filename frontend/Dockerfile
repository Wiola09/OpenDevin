# Use the official Node.js 16 image as our base image
FROM node:18-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the 'frontend' directory contents into the container at /app
COPY . .

# Install dependencies
RUN npm install

# Make port 3001 available to the world outside this container
EXPOSE 3001

# Start the application
CMD ["npm", "start", "--", "--port", "3001"]
