import Vue from 'vue'
import App from './App.vue'
import '@grpc/grpc-js'
import '@grpc/proto-loader'

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')
