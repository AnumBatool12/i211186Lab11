FROM node:14

WORKDIR /i211186Lab11
COPY package.json .
RUN npm install
COPY . .
CMD npm start