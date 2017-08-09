FROM openresty/openresty

COPY ./ /usr/local/openresty/nginx/

EXPOSE 8080