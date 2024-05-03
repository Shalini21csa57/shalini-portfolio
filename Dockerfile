# Use the official Node.js image as base
FROM node:18-alpine as build

# Set the working directory in the container
WORKDIR /shalini-portfolio

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Build the React app   
RUN npm run build

# Expose port 3000 for the Node.js server (optional, depending on your setup)
EXPOSE 3000

# Command to run the React app
CMD ["npm", "run","dev"]
