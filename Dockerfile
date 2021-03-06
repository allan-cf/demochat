# Change latest to your desired node version (https://hub.docker.com/r/library/node/tags/)

FROM kkarczmarczyk/node-yarn:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install --save instana-nodejs-sensor

COPY package.json /usr/src/app/
RUN yarn install
COPY . /usr/src/app

CMD [ "node", "app.js" ]
