FROM node:20.10.0

ENV NITRO_PORT=8080 NITRO_PRESET=node-server

EXPOSE 8080

WORKDIR /get-bonus

COPY . .

RUN npm i -g pnpm && pnpm install && pnpm build \
  && ls .output/server/node_modules/sharp/build/Release

CMD node .output/server/index.mjs
