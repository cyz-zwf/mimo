import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import MintUi from 'mint-ui'
import "mint-ui/lib/style.css"
// 引入iconfont
import "./font/iconfont.css"
/* 引入vant */
import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

//引入swiper
import VueAwesomeSwiper from 'vue-awesome-swiper'
import './assets/css/swiper.css'
Vue.use(VueAwesomeSwiper)

// 配置axios 设置默认路径
axios.defaults.baseURL = "http://127.0.0.1:5050/"
// 配置axios 在发生ajax时,保存session信息
axios.defaults.withCredentials = true;
// 将axios 注册vue实例中
Vue.prototype.axios = axios
axios.defaults.withCredentials = true
Vue.use(MintUi);
Vue.config.productionTip = false
Vue.prototype.hostUrl = "http://127.0.0.1:5050/" // 服务端路径初始化

/* 过滤器 */
/* 1.一周每天过滤器 */
Vue.filter('weekFilter', (val) => {
   let znWeek = '';
   switch (val) {
      case 1:
         znWeek = '一';
         break;
      case 2:
         znWeek = '二';
         break;
      case 3:
         znWeek = '三';
         break;
      case 4:
         znWeek = '四';
         break;
      case 5:
         znWeek = '五';
         break;
      case 6:
         znWeek = '六';
         break;
      case 7:
         znWeek = '日';
         break;
   }
   return znWeek;
})

new Vue({
   router,
   store,
   render: h => h(App)
}).$mount('#app')