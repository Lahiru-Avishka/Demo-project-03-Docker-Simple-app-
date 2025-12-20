FROM node:20-alpine

WORKDIR /app
ADD package*.json ./

COPY package.json .
RUN npm install
ADD . .
CMD ["npm", "run" , "start"]



