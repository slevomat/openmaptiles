FROM node:6-alpine

RUN npm install -g @mapbox/mapbox-tile-copy

VOLUME /data
ENV DATA_DIR=/data

WORKDIR /usr/local/bin
COPY ./tilecopy/copy.sh /usr/local/bin/
CMD ["./usr/local/bin/copy.sh"]
