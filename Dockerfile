FROM node:16.13.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
COPY . .
EXPOSE 3000
RUN npm run build
ENTRYPOINT ["npm", "run", "start"]
