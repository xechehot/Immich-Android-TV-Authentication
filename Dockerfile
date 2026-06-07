FROM node:20.11-alpine

RUN mkdir /app

WORKDIR /app

COPY . ./

RUN rm -f .npmrc /root/.npmrc && npm install --registry https://registry.npmjs.org

EXPOSE 5000

CMD [ "node", "app.js" ]