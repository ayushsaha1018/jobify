# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install only production dependencies
RUN npm install

# Copy the server application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the server
CMD ["node", "server.js"]