FROM node:15.0.1

ENV PORT 8186
EXPOSE 8186

COPY ./node_modules ./node_modules

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

COPY ./src ./src
COPY ./web_server ./web_server

#RUN npm run test

CMD ["node", "web_server/server.js"]
