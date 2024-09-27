# Use an official Node.js runtime as a parent image
FROM node:18-alpine3.18

# Set the working directory in the container
WORKDIR /src/app
ENV NODE_ENV=production
# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the app dependencies inside the container
RUN npm install

# Copy the rest of the application source code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Command to run the app
CMD ["node", "server.js"]