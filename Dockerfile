FROM node:argon

WORKDIR /server
COPY app/ /server/app/
RUN npm install

EXPOSE 8080
CMD ["npm", "start"]