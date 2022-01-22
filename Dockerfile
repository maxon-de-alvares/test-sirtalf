FROM node:14

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN yarn config set proxy http://jupikovmv:8KZZvj@192.92.9.100:3128
RUN yarn config set https-proxy http://jupikovmv:8KZZvj@192.92.92.100:3128

RUN yarn install
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000
