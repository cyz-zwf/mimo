import Vue from 'vue'
import Router from 'vue-router'

import Home from './components/Home.vue' //主页面
import Detail from './components/Details/Detail.vue' //主页面
import Dates from './components/Index/Dates.vue'

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
         path: '/dates',
         component: Dates
      }
   ]
})