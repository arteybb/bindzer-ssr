FROM node:20.18.1

WORKDIR /app

COPY package*.json ./

COPY yarn.lock ./


RUN yarn install

COPY . .

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "start"]