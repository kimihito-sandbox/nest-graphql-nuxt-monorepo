FROM node:12-alpine 

WORKDIR /apps

COPY --chown=node:node package.json .
COPY --chown=node:node yarn.lock .

COPY --chown=node:node ./apps/api ./apps/api
COPY --chown=node:node ./apps/web ./apps/web
RUN yarn install
USER node
