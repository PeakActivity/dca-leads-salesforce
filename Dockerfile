FROM node:14.17-alpine
RUN apk update
RUN apk add --no-cache ca-certificates ${additionalAlpinePackages}
WORKDIR /app
COPY . .
RUN npm install

RUN npm run build
#RUN 
ENTRYPOINT ["npm", "run", "start"]
