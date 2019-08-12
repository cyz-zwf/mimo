import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import MintUi from 'mint-ui'
import "mint-ui/lib/style.css"



Vue.prototype.axios = axios
axios.defaults.withCredentials = true
Vue.use(MintUi);
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
