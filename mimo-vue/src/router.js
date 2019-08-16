import Vue from 'vue'
import Router from 'vue-router'

import Home from './components/Home.vue' //主页面
import Detail from './components/Details/Detail.vue' //主页面
import HeaderSe from './components/Index/HeaderSe.vue' // 主页轮播图

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
      }
   ]
})