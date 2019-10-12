FROM node:0.12.7-wheezy
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN  npm install \     && npm run build \     && cp -r dist/* /usr/share/nginx/html \     && rm -rf /app
CMD ["nginx","-g","daemon off;"]
