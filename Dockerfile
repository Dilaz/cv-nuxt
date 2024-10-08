FROM oven/bun:1 AS build
WORKDIR /app
COPY package.json bun.lockb ./
RUN bun install
COPY . .
RUN bun run build

FROM oven/bun:1 AS prod
WORKDIR /app
COPY --from=build /app/.output ./
RUN ls -a /app

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

USER bun
CMD [ "bun", "run", "server/index.mjs" ]
