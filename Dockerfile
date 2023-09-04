# stage 1
FROM node:latest as node
WORKDIR /usr/src/app
COPY ./dist/angular-app .
CMD ["nginx", "-g", "daemon off;"]

# stage 2
#FROM nginx:alpine
#COPY --from=node /app/dist/angular-app /usr/share/nginx/html
