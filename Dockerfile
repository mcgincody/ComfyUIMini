FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Build frontend assets
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
