# Use the official Node.js image as a base
FROM node:14

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies first
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the entire app into the container
COPY . .

# Expose the port your app will run on
EXPOSE 8001

# Run the application
CMD ["npm", "start"]
