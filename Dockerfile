FROM mhart/alpine-node:8
	
RUN mkdir -p /app && mkdir -p /app/public

ADD package.json /app/package.json 
ADD mini-webserver.js /app/mini-webserver.js

RUN cd /app && npm install

VOLUME ["/app/public"]

EXPOSE 80

CMD ["node", "/app/mini-webserver.js"]

ADD index.html /app/public/index.html
