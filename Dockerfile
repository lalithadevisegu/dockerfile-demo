FROM node:10
WORKDIR /app 
COPY ["package.json", "package-lock.json*", "/app"]
RUN npm install
COPY . /app
EXPOSE 8000
CMD ["node", "/app/app.js"]
