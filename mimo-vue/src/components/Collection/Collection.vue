<template>
  <div>
    <mt-header fixed title="我喜欢的房源" class="top">
      <mt-button icon="more" slot="right"></mt-button>
    </mt-header>
    <div class="collect">
      <div class="coll-item" v-for="(item,i) of list" :key="i">
        <div class="item-top" @click="to_det">
          <img :src="`http://127.0.0.1:5050/images/collect/${item.img_url}`" class="image" />
          <div class="price">￥{{item.price}}</div>
        </div>
        <p class="title">{{item.title}}</p>
        <div class="item-tag">
          <span class="tags">
            <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />速订
          </span>
          <span class="tags">
            <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />长租优惠
          </span>
          <span class="tags">
            <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />优品
          </span>
          <span class="tags">
            <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />商旅首选
          </span>
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
    to_det(){
      this.$router.push("/detail")
    },
    loadMore(){
      this.axios.get("collect").then(res=>{
        this.list=res.data.reverse();
      })
    }
  },
  mounted(){
    this.loadMore()
  }
};
</script>
<style scoped>
/* 顶部导航栏 */
.top {
  background: #fff;
  color: #000;
  height: 1.2rem;
  border-bottom: 0.01rem solid #eee;
}
/* 收藏主体部分 */
.collect {
  margin-top: 1.2rem;
  margin-bottom: 1.8rem;
}
/* 收藏单项 */
.coll-item {
  margin-bottom: 0.4rem;
  position: relative;
}
/* 单项上部分 */
.item-top {
  height: 6.666667rem;
  position: relative;
}
/* 图片 */
.image {
  width: 100%;
}
.price {
  background: rgba(0, 0, 0, 0.6); /* 半透明背景 */
  position: absolute;
  left: 0;
  bottom: 0;
  color: #fff;
  font-size: 0.53333rem;
  padding: 0.166667rem 0.266667rem 0.153333rem 0.186667rem;
}
.title {
  color: #333;
  font-size: 0.4rem;
  font-weight: 700;
  padding-left: 0.4rem;
  margin-top: 0.26667rem;
  margin-bottom: 0.13333rem;
}
/* 标签部分 */
.item-tag {
  padding-left: .4rem;
  margin-bottom: .13333rem;
}
.tags {
  display: inline-block;
  font-size: 0.32rem;
  color: #750124;
  margin-right: 0.23333rem;
  vertical-align: text-top;
}
.tags img {
  width: 0.32rem;
  position: relative;
}
</style>