FROM node:18-alpine

# Create and define the node_modules's cache directory.
RUN mkdir -p /client/cache
WORKDIR /client/cache

# Install the application's dependencies into the node_modules's cache directory.
COPY package*.json ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir -p /client/app
WORKDIR /client/app

# Copy the installed dependencies to the application's working directory.
RUN cp -r /client/cache/node_modules/. /client/app/node_modules/

# Copy the entrypoint script.
COPY entrypoint.sh ./

ENTRYPOINT [ "/client/app/entrypoint.sh" ]