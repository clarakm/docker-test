# base image for Docker image
FROM node:13.10.1-alpine3.10
# dictate where all our app code will go and any subseqeuent commands we run within our docker file will run w/in this directory
WORKDIR /app
# copy package.json into app directory
COPY package.json /app
# run command
RUN npm install
# copy over src files to the app directory
COPY . /app
# kick off app
CMD ["npm","start"]