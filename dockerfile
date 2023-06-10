FROM node:18-alpine
WORKDIR /home
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
EXPOSE 9000
CMD ["node", "server.js"]
