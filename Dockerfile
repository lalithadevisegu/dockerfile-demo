FROM node:12.18.1
WORKDIR /app 
COPY ["package.json", "package-lock.json*", "/app"]
RUN npm install
COPY . /app
EXPOSE 8000
CMD ["node", "/app/app.js"]
