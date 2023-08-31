FROM node:18-alpine

WORKDIR /app-server

COPY package.json /app-server/

RUN npm install

COPY . /app-server/

RUN npx prisma generate

CMD [ "npm", "run", "dev" ]
