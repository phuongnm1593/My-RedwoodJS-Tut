FROM node:15-alpine as package-install

# WORKING DIR
WORKDIR /usr/src/app

COPY ./app /usr/src/app

# EXPOSE
EXPOSE 8910

RUN yarn install

CMD ["yarn", "redwood", "dev"]