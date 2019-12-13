FROM node:13.3.0

RUN chown -R node:node /usr/local/lib/node_modules \
&& chown -R node:node /usr/local/bin

USER node
RUN npm install -g @angular/cli@9.0.0

USER root
RUN ng set --global packageManager=npm

ENV CHROME_BIN=/usr/bin/chromium-browser
RUN apk add --no-cache chromium udev ttf-freefont
