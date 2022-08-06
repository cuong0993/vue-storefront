FROM node:14-alpine
WORKDIR /usr/src/app
COPY . .
RUN yarn install
EXPOSE 3001
RUN yarn build
CMD [ "yarn", "start" ]