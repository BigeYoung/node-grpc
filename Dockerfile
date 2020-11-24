FROM node:12
RUN npm install --save @grpc/grpc-js
RUN npm install --save @grpc/proto-loader
COPY main.js /
RUN npm run build
