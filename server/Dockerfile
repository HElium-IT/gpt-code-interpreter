FROM node:20-alpine

# Create and define the node_modules's cache directory.
RUN mkdir -p /server/cache
WORKDIR /server/cache

# Install the application's dependencies into the node_modules's cache directory.
ADD package.json ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir -p /server/app
WORKDIR /server/app

# Copy the entrypoint script.
ADD entrypoint.sh ./

ENTRYPOINT [ "/server/app/entrypoint.sh" ]