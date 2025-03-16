FROM node
WORKDIR /dhondhu
COPY . .
RUN npm install
RUN npm run build

RUN apt update
RUN apt install nginx -y
RUN cp -r build/* /usr/share/nginx/html