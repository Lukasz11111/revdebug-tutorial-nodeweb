FROM node:18-alpine

WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .
EXPOSE 3000
RUN npx revd


# Uruchamiamy aplikację
CMD ["npm", "start"]
