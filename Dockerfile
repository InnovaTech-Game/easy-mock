FROM node:8.17.0-alpine
WORKDIR /home/node/app
ADD package.json package-lock.json /home/node/app/
RUN npm install
COPY . /home/node/app
RUN npm run build
EXPOSE 7300
CMD ["npm", "start"]
