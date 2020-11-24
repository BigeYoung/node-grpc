FROM node:12
WORKDIR /root/
RUN npm install vue
RUN npm install -g @vue/cli @vue/cli-service-global
RUN vue create node-grpc
WORKDIR /node-grpc/
RUN npm install --save @grpc/grpc-js
RUN npm install --save @grpc/proto-loader
RUN sed -i '1s/^/import '@grpc/grpc-js'\nimport '@grpc/proto-loader'\n/' file
RUN npm run build
