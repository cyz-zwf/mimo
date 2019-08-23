import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
   state: {
      users: "请先登录"
   },
   mutations: {
      increment(state, phoneNum) { // 购物车数量+1
         state.users = phoneNum;
      },
   },
   getters: { // 添加 获取数据函数
      getCartCount(state) {
         return state.users;
      }
   },
   actions: {

   }
})