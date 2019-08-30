import Vue from 'vue'
import Router from 'vue-router'

import Home from './components/Home.vue' //主页面
import Detail from './components/Details/Detail.vue' //主页面
import HeaderSe from './components/Index/HeaderSe.vue' // 主页轮播图
import GlobalHouse from "./components/Index/GlobalHouse.vue"
import Map from './components/Details/Map.vue'
import Test from './components/Details/test.vue' //主页面
import Dates from './components/Index/Dates.vue'
import Login from './components/Index/Login.vue'
import Recommend from './components/common/Recommend.vue'
import Iframe from './components/Details/Iframe.vue'
import Search from './components/Search/Search.vue'
import Subscribe from './components/Index/Subscribe.vue'
import Reg from './components/Index/Reg.vue' // 注册
import Datebook from './components/Index/Dateboook.vue' // 日历
Vue.use(Router)

export default new Router({
   routes: [

      {
         path: '/home',
         component: Home
      },
      {
         path: '/detail',
         component: Detail
      },
      {
         path: '/',
         component: Home
      },
      {
         path: '/headerse',
         component: HeaderSe
      },
      {
         path: '/GlobalHouse',
         component: GlobalHouse
      },
      {
         path: '/map',
         component: Map
      },
      {
         path: '/test',
         component: Test
      },
      {
         path: '/dates',
         component: Dates
      },
      {
         path: '/login',
         component: Login
      },
      {
         path: '/Recommend',
         component: Recommend
      },
      {
         path: '/iframe',
         component: Iframe
      },
      {
         path: '/search',
         component: Search,
      },
      {
         path: '/subscribe',
         component: Subscribe
      },
      {
         path: '/reg',
         component: Reg
      },
      {
         path: '/datebook',
         component: Datebook
      },
   ]
})