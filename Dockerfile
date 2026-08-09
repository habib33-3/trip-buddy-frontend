
# ---------- Build ----------
FROM node:22-alpine AS build

RUN corepack enable
WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .

ARG VITE_BACKEND_API_URL
ENV VITE_BACKEND_API_URL=${VITE_BACKEND_API_URL}

RUN pnpm build


# ---------- Production ----------
FROM nginx:1.29.1-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

