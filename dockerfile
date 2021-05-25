# pull official base image
FROM node:15.1.0-alpine

# set working directory
WORKDIR /www

# add `/app/node_modules/.bin` to $PATH
ENV PATH /www/node_modules/.bin:$PATH

# install app dependencies
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
RUN npm install vue-cli -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "run", "serve"]

USER node