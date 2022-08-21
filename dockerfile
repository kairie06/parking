FROM node:alpine
WORKDIR /app

COPY package.json package-lock.json parkings.json ./

RUN npm install

COPY . ./

EXPOSE 3000

CMD ["node", "index.js"]