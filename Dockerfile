FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV DB_HOST=mongo_host_name
ENV DB_PORT=mongo_port_number
ENV DB_NAME=mongo_database_name
EXPOSE 3001
CMD [ "node", "index.js" ]