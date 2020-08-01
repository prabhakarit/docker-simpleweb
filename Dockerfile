# Specify a base image
FROM node:alpine

# Setup work directory
WORKDIR /usr/app

# Install some dependancies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# default command
CMD ["npm","start"]