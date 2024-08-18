FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm run test   
EXPOSE 8000
CMD ["node","app.js"] pp.js"]
//CMD ["node","app.js"] ","app.js"]
//CMD ["node","app.js.js"]
//CMD ["node","app.js".js"]
//CMD ["node","app.js"

