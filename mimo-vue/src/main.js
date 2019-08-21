import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import MintUi from 'mint-ui'
import "mint-ui/lib/style.css"
// 引入iconfont
import "./font/iconfont.css"

// 配置axios 设置默认路径
axios.defaults.baseURL = "http://127.0.0.1:5050/"
// 配置axios 在发生ajax时,保存session信息
axios.defaults.withCredentials = true;
// 将axios 注册vue实例中
Vue.prototype.axios = axios
axios.defaults.withCredentials = true
Vue.use(MintUi);
Vue.config.productionTip = false

new Vue({
   router,
   store,
   render: h => h(App)
}).$mount('#app')