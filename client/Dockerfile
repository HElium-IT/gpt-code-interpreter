FROM node:20-alpine

# Create and define the node_modules's cache directory.
RUN mkdir -p /client/cache
WORKDIR /client/cache

# Install the application's dependencies into the node_modules's cache directory.
ADD package.json ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir -p /client/app
WORKDIR /client/app

# Copy the entrypoint script.
ADD entrypoint.sh ./

ENTRYPOINT [ "/client/app/entrypoint.sh" ]