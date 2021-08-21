FROM node:14
WORKDIR /usr/src/backend
COPY package*.json ./
# RUN npm yarn install
# RUN yarn install

EXPOSE 5100 9229 9230
ENTRYPOINT [ "npm", "run" ]
CMD ["develop"]


# ENTRYPOINT [ "npm", "start" ]
# CMD ["develop"]

