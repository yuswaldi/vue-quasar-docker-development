FROM node:14-alpine

WORKDIR /vue_app

RUN yarn global add @quasar/cli

EXPOSE 8080

CMD [ "yarn", "quasar", "dev" ]
