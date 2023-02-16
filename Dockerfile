FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

# CMD sh -xc "sed -i -e 's/REPLACE_PROXY_TO/$(echo ${PROXY_TO} | sed s/\//\\\//g)/g' /etc/nginx/nginx.conf && nginx"
CMD sh -xc "sed -i -e s/REPLACE_PROXY_TO/$(echo ${PROXY_TO} | sed 's/\//\\\\\//g')/g /etc/nginx/nginx.conf && nginx"
