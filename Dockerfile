
# base image

FROM node:lts-alpine3.17

# Set the Working Directory
WORKDIR /app

#Copy the Package.json
COPY package*.json .

# Install dependencies

Run npm install

# Copy Source Code to container work directory

COPY . .

# EXPOSE Port

EXPOSE 3010

# Entry for CMD

CMD [ "node", "server.js" ]
