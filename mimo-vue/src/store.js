import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
   state: {
      users: "请先登录",
      phoneNumber: "",
      usersinfo: "",
      dateobj: {}, // 入住与退房时间
      back: null,
      collection: null
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
      },
      changeBack(state) {
         state.back = "Mine";
      },
      recoverBack(state) {
         state.back = null;
      },

      changeCollection(state) {
         state.collection = "Collection"
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

      },
      getBack(state) {
         return state.back;
      },
      getCollection(state) {
         return state.collection;
      },
      actions: {

      }
   }
})