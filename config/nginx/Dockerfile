FROM nginx:1.16
LABEL MAINTAINER="Houman Judaki"

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY status.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
