FROM node:10

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install --production --no-progress

COPY . .

CMD npm run start
