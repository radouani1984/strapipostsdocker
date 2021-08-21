FROM node:14
WORKDIR /usr/src/frontend
COPY package*.json ./
RUN npm install -g  --unsafe-perm @angular/cli @angular-devkit/build-angular && yarn install
EXPOSE 5000
EXPOSE 8229
ENTRYPOINT [ "npm", "start" ]
