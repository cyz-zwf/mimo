<template>
  <div class="search">
    <div class="header">
      <div>
        <span class="ic_btn" @click="back"></span>
      </div>
      <div class="rep">
        <input type="text" value="广州" class="search_input" />
        <span class="close"></span>
      </div>
      <div>
        <span class="ic_map"></span>
      </div>
    </div>
    <!-- 展示商品 -->
    <div class="clearmargin">
      <div class="brand" v-for="(item,i) of list" :key="i">
        <div class="brand_top">
          <img :src="`${url}${item.img_url}`" @click="toDet"/>
          <img :src="`${item.statu?'http://127.0.0.1:5050/images/detail/det_heart_selected.png':'http://127.0.0.1:5050/images/detail/det_heart.png'}`" 
            class="love" @click="collection" :data-id="item.id" :data-i=i
          >
          <!-- class="love"  -->
        </div>
        <div class="text">
          <p>{{item.subtitle}}</p>
          <p class="bold">{{item.title}}</p>
          <p class="color">※ 速订 ※ 长租优惠</p>
          <p class="bold">¥{{item.price}}</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      url: "http://127.0.0.1:5050/images/detail/",
      list: []
    };
  },
  methods: {
    //返回按钮
    back() {
      this.$router.push("/")
    },
    toDet(){
      this.$router.push("/detail")
    },
    // 点击爱心变颜色
    collection(e) {
      var id=parseInt(e.target.dataset.id);
      var i=parseInt(e.target.dataset.i);
      this.list[i].statu=!this.list[i].statu;
      var url="updateStatu";
      var obj={statu:this.list[i].statu?1:0,id};
      // console.log(obj)
      this.axios.get(url,{params:obj}).then(res=>{
        // console.log(res)
      });
    },
    LoadMore() {
      this.axios
        .get("/recommend")
        .then(res => {
          this.list = res.data.data;
          // console.log(this.list);
          for(var item of this.list){
            if(item.statu){

            }
          }
        })
        .catch(err => {
          console.log(err);
        });
    }
  },

  mounted() {
    this.LoadMore();
  }
};
</script>
<style scoped>
.header {
  height: 1.5rem;
  display: flex;
  justify-content: space-around;
  line-height: 1.5rem;
  position: fixed;
  background-color: #fff;
  width: 100%;
  top: 0;
}
.header :nth-child(1) {
  flex-grow: 2;
}
.header :nth-child(2) {
  flex-grow: 8;
  position: relative;
}
.header :nth-child(3) {
  flex-grow: 2;
}
.ic_btn {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/Search/ic_btn1.png") no-repeat;
  background-size: 100%;
  margin-left: 0.2rem;
  margin-top: 0.4rem;
}
.ic_map {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/Search/ic_map.png") no-repeat;
  background-size: 100%;
  margin-left: 0.4rem;
  margin-top: 0.4rem;
}

.close {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/Search/ic_clock.png") no-repeat;
  background-size: 100%;
  position: absolute;
  top: -1.1rem;
  left: 6rem;
}
.search_input {
  width: 100%;
  height: 0.8rem;
  border-radius: 0.5rem;
  border: 0.02rem solid #e8e8e8;
  background: #e8e8e8;
  padding-left: 0.5rem;
  box-sizing: border-box;
}
/* <!-- 展示商品 --> */
.clearmargin {
  margin-top: 1.5rem;
}
.brand {
  padding: 0.2rem;
}
.brand_top {
  display: flex;
}
.brand_top img {
  width: 100%;
  height: 6rem;
  border-radius: 0.2rem;
}
.brand_top img.love {
  border-radius:0;
  width: 0.7rem;
  height: 0.7rem;
  margin-left: -1.2rem;
  margin-top: 0.5rem;
}
.text {
  margin: 0.2rem;
}
.text p {
  margin-bottom: 0.2rem;
}

.text p.bold {
  font-weight: bold;
  font-size: 0.5rem;
}
.text p.color {
  color: #750124;
}
</style>