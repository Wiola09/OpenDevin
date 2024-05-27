FROM node:18-alpine AS web-build
ARG VITE_TERMINAL_WS_URL1
ENV VITE_TERMINAL_WS_URL=$VITE_TERMINAL_WS_URL1
RUN echo "VITE_TERMINAL_WS_URL=${VITE_TERMINAL_WS_URL}" > .env

WORKDIR /usr/src/app
COPY ./ ./client
RUN cd client && npm install && npm run build

# Use official nginx image as the base image
FROM nginx:latest

# Copy the build output to replace the default nginx contents.
COPY --from=web-build /usr/src/app/client/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80
