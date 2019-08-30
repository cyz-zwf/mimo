import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
   state: {
      users: "请先登录",
      phoneNumber: "",
      usersinfo: "",
      dateobj: {} // 入住与退房时间
   },
   mutations: {
      increment(state, phoneNum) { // 购物车数量+1
         state.users = phoneNum;
      },
      userName(state, phoneCode) {
         state.phoneNumber = phoneCode
      },
      info(state, userData) {
         state.usersinfo = userData
      },
      dateinfo(state, dateobj) { // 获取住房日期

         state.dateobj = dateobj
      }
   },
   getters: { // 添加 获取数据函数
      getCartCount(state) {
         return state.users;
      },
      getPhone(state) {
         return state.phoneNumber;
      },
      getUserInfo(state) {
         return state.usersinfo
      },
      getDateInfo(state) {
         return state.dateobj
      }
   },
   actions: {

   }
})