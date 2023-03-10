FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD sh -xc "sed -i -e s/REPLACE_CUSTOM_AUTH_TOKEN/${AUTH_TOKEN}/g -e s/REPLACE_PROXY_TO/$(echo ${PROXY_TO} | sed 's/\//\\\\\//g')/g /etc/nginx/nginx.conf && nginx"
