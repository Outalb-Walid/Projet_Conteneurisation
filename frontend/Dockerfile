# Stage 1: Build Angular app
FROM node:16-alpine as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

# Stage 2: Use Nginx to serve the build
FROM nginx:1.25.3-alpine
COPY --from=build /app/dist/angular-16-crud /usr/share/nginx/html
EXPOSE 80