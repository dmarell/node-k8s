FROM node:argon

WORKDIR /server
COPY app/ /server/app/
COPY package.json /server/
RUN npm install

EXPOSE 8080
CMD ["npm", "start"]