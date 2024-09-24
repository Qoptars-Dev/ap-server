# Use the official Node.js 16 image.
FROM node:16

# Create and set the app directory inside the container.
WORKDIR /ap-server

# Copy the package.json and package-lock.json to install dependencies.
COPY package*.json ./

# Install dependencies.
RUN npm install 

# Copy the rest of the application code.
COPY . .

# Expose the port your app runs on.
EXPOSE 5000

# Start the server.
CMD [ "node", "server.js" ]