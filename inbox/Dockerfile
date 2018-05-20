FROM mhart/alpine-node

# - this app listens on port 3000, but the container should launch on port 80
  #  so it will respond to http://localhost:80 on your computer

EXPOSE 3000

# - then it should use alpine package manager to install tini: 'apk add --update tini'
# - then it should create directory /usr/src/app for app files with 'mkdir -p /usr/src/app'

RUN apk add --update tini \
	&& apk add bash
    
# alpine-node uses yarn already and it's not recommended to use npm and yarn.
# RUN npm install -g nodemon

RUN yarn global add nodemon

WORKDIR /usr/src/app