# Base node image from docker registry (can be a private registry). Based on the requirement the node version
# can be chosen
FROM node:16

# Use a non-root user for improved security
USER node

# Working directory to organize application code in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory (/usr/src/app) inside the container
COPY package*.json ./

# Install project dependencies with all node modules
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Application should use the port that is exposed. It's 5000 in this case but can be any port that
# should match in the application code and here in the dockerfile.
EXPOSE 5000

# Set environment variables
ENV PORT=5000

# Start the Node.js application
CMD ["npm", "start"]
