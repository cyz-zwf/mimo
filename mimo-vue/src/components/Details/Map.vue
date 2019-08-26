<template>
  <div class="map_con">
    <mt-header fixed>
      <router-link to="/detail" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div id="allmap"></div>
    <div class="posi_btn">
      <i class="my_posi" @click="myPosi"></i>
      <i class="room_posi" @click="roomPosi"></i>
    </div>
    <div class="addressInfo"></div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      longitude:120.408772,
      latitude:36.063611
    }
  },
  methods:{
    loadMap(){
      var map = new BMap.Map("allmap");
      var point=new BMap.Point(this.longitude,this.latitude);
      map.centerAndZoom(point, 19);
      map.enableScrollWheelZoom(true); //利用鼠标滚轮控制大小
      var myIcon = new BMap.Icon("http://127.0.0.1:5050/images/detail/det_marker.png", new BMap.Size(23, 40));
      var marker = new BMap.Marker(point, { icon: myIcon });
      map.addOverlay(marker);
      var addr=document.getElementsByClassName("addressInfo")[0];
      addr.innerHTML="山东省青岛市市南区东海中路18号海悦中心"

      // var geolocation = new BMap.Geolocation();
      // geolocation.getCurrentPosition(function (r) {
      // if (this.getStatus() == BMAP_STATUS_SUCCESS) {
      //   var mk = new BMap.Marker(r.point);
      //   map.addOverlay(mk);
      //   map.panTo(r.point);
      //   console.log(r.point.lng,r.point.lat);
      // }else {
      //   console.log('failed' + this.getStatus());
      // }}, { enableHighAccuracy: true })
    },
    roomPosi(){
      this.longitude=120.408772;
      this.latitude=36.063611;
      this.loadMap()
    },
    myPosi(){
      this.longitude=113.274001;
      this.latitude=23.121343;
      this.loadMap()
      var addr=document.getElementsByClassName("addressInfo")[0];
      addr.innerHTML="广东省广州市越秀区海珠广场侨光路8号华侨大厦"
    }
  },
  mounted(){
    this.loadMap();
  }
}
</script>
<style scoped>
.map_con{
  position: relative;
}
#allmap{
  height:100vh;
  width:100vw;
}
.mint-header{
  background-color: #fff;
  background: rgba(255, 255, 255, 0.8);
  background-color: rgba(5, 5, 5, 0.15);
  z-index: 2;
}
.posi_btn{
  width: .9rem;
  height: 1.8rem;
  position: absolute;
  background: rgba(5, 5, 5, 0.15);
  background: rgba(255, 255, 255, 0.8);
  /* background: #fff; */
  z-index: 2;
  bottom: .8rem;
  right: .3rem;
  text-align: center;
  border-radius: .086667rem;
  box-shadow: 1px 1px 2px 0px #999;

}
.posi_btn i{
  display: inline-block;
  width: 0.82223rem;
  height: 0.82223rem;
  line-height: 0.82223rem;
}
.posi_btn .my_posi{
  background: url("http://127.0.0.1:5050/images/detail/det_my_posi.png") no-repeat;
  background-size: 100%;
}
.posi_btn .room_posi{
  background: url("http://127.0.0.1:5050/images/detail/det_room_posi.png") no-repeat;
  background-size: 100%;
}

/* 地址信息 */
.addressInfo{
  position: fixed;
  bottom: 1.066667rem;
  width: 69%;
  left: 50%;
  transform: translateX(-50%);
  text-align: center;
  background: rgba(5, 5, 5, 0.6);
  color: #fff;
  font-size: 12px;
  padding: .13333rem;
  border-radius: .1066667rem;
}
</style>