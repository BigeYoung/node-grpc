FROM node:12
WORKDIR /root/
RUN npm install -g @vue/cli @vue/cli-service-global
RUN vue create node-grpc --default
WORKDIR /root/node-grpc/
RUN npm install --save @grpc/grpc-js
RUN npm install --save @grpc/proto-loader
COPY main.js /root/node-grpc/src
RUN npm install --save dns http2
CMD npm run serve
