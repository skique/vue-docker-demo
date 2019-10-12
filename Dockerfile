FROM node:0.12.7-wheezy
RUN yum update \    && yum -y install  nginx
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN  npm install \     && npm run build \     && cp -r dist/* /usr/share/nginx/html \     && rm -rf /app
CMD ["nginx","-g","daemon off;"]
