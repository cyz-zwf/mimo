<template>
  <div>
    <div style="color: #666;font-weight: 700; font-size: 0.436667rem;margin-bottom:0.266667rem;
  margin-top: 0.266667rem;">推荐房源</div>
    <div class="recommend">
      <div v-for="(item,i) of list" :key="i" class="container">
        <div class="img_container">
          <img :src="`http://127.0.0.1:5050/images/detail/${item.img_url}`">
          <div class="price">¥ {{item.price}}</div>
        </div>
        <div class="title">{{item.title}}</div>
        <div class="subtitle">{{item.subtitle}}</div>
        <div class="icon">
          <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />速订
          <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />长租优惠
          <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />优品
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      list:[]
    }
  },
  methods:{
    loadMore(){
      this.axios.get("recommend").then(res=>{
        this.list=res.data.data;
      })
    }
  },
  mounted() {
    this.loadMore();
  },
};
</script>
<style scoped>
.recommend{
  display: flex;
  overflow-x: scroll;
}
.recommend::-webkit-scrollbar {display:none}
.img_container>img{
  width:8rem;
  height:5.33rem;
}
.container {
  display: flex;
  flex-direction: column;
  height:7.2rem;
  width: 8rem;
  margin-right:0.4rem;
}
.img_container {
  width: 8rem;
  height: 5.333rem;
  position: relative;
  /* background: url("http://127.0.0.1:5050/images/detail/rec01.jpg"); */
  background-size: cover;
}
.price {
  background: rgb(0, 0, 0, 0.6);
  position: absolute;
  width: 1.95rem;
  height: 1.05rem;
  bottom: 0;
  line-height: 1.05rem;
  text-align: center;
  color: #fff;
  font-size: 0.533rem;
  font-weight: bold;
}
.icon {
  color: #720124;
  font-size: 0.32rem;
  margin-top: 0.1rem;
}
.icon > img {
  width: 0.32rem;
}
.title {
  font-size: 0.4rem;
  font-weight: bold;
  color: #000;
  margin-top: 0.3rem;
  width: 6.5rem;               
  overflow: hidden;         
  text-overflow: ellipsis;  
  white-space: nowrap;
}
.subtitle {
  font-size: 0.32rem;
  color: #757575;
  margin-top: 0.1rem;
}
</style>