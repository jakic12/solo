FROM nginx:alpine

RUN mkdir -p /www

COPY nginx.conf /etc/nginx/nginx.conf
COPY www /www/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

