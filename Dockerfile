FROM node:16.16.0

RUN mkdir /usr/www
WORKDIR /usr/www

RUN export NODE_ENV=production

COPY package.json .
COPY turbo.json .


# Install the dependencies
RUN npm install -y


COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /
ENTRYPOINT ["docker-entrypoint.sh"]
