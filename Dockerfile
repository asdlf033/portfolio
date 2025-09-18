# Multi-stage build: build SvelteKit static site, then serve via Nginx

# 1) Build stage
FROM node:20-alpine AS builder
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm ci --omit=dev=false

# Copy source
COPY . .

# Build static site (SvelteKit adapter-static -> /build)
RUN npm run build

# 2) Runtime stage: Nginx
FROM nginx:1.27-alpine AS runtime

# Remove default config and add our SPA-friendly config
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/app.conf

# Copy built static assets from builder
COPY --from=builder /app/build /usr/share/nginx/html

# Healthcheck: ensure Nginx is serving index
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ | grep -qi "<html" || exit 1

EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
