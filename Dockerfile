# Build stage
FROM krmp-d2hub-idock.9rum.cc/goorm/node:16
WORKDIR /usr/app/layout
COPY krampoline-next/ ./
RUN npm ci
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "build"]