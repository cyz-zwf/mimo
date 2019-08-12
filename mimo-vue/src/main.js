import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import MintUi from 'munt-ui'
import "mint-ui/lib/style.css"


Vue.use(MintUi);
Vue.prototype.axios=axios
axios.defaults.withCredentials=true

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
