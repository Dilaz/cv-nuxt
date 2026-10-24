FROM oven/bun:1.4.4@sha256:1d22548f177f4ff38e0c15baa3c2c46c6c2060ba2d1bc573bb4720b407548f1d AS build
WORKDIR /app
COPY package.json bun.lock ./
RUN bun install
COPY . .
RUN bun run build

# Pinned: Bun < 1.4.4 is vulnerable to CVE-2026-111497 (Brotli decoder RCE).
FROM oven/bun:1.4.4@sha256:1d22548f177f4ff38e0c15baa3c2c46c6c2060ba2d1bc573bb4720b407548f1d AS prod
WORKDIR /app
COPY --from=build /app/.output ./
RUN ls -a /app

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

USER bun
CMD [ "bun", "run", "server/index.mjs" ]
