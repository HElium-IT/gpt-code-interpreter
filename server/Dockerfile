FROM node:20-alpine

# Create and define the node_modules's cache directory.
RUN mkdir -p /server/cache
WORKDIR /server/cache

# Install the application's dependencies into the node_modules's cache directory.
COPY package*.json ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir -p /server/app
WORKDIR /server/app

# Copy the installed dependencies to the application's working directory.
RUN cp -r /server/cache/node_modules/. /server/app/node_modules/

# Copy the entrypoint script.
COPY entrypoint.sh ./

ENTRYPOINT [ "/server/app/entrypoint.sh" ]