# Set the base image to Node
FROM node:lts

# Set a working directory where 11ty will run
WORKDIR /usr/src/app

# Copy over the package.json and package-lock.json file
COPY package*.json ./

# Install dependencies - everything in node_modules
RUN npm install

# Copy the rest of your website source
COPY . .

# Build your website (this will output static files into the _site directory)
RUN npx eleventy

# Specify the command to run when the container is started.
CMD [ "npx", "eleventy", "--serve" ]
