FROM node:12
WORKDIR /root/
RUN npm install vue
RUN npm install -g @vue/cli @vue/cli-service-global
RUN vue create node-grpc --default
WORKDIR /node-grpc/
RUN npm install --save @grpc/grpc-js
RUN npm install --save @grpc/proto-loader
