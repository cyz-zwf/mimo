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
      var myIcon = new BMap.Icon("http://127.0.0.1:5050/detail/det_marker.png", new BMap.Size(23, 40));
      var marker = new BMap.Marker(point, { icon: myIcon });
      map.addOverlay(marker);

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
.mintui-back:before{
  /* color: #000; */
}
.posi_btn{
  width: .9rem;
  height: 2rem;
  position: absolute;
  background: rgba(5, 5, 5, 0.15);
  background: rgba(255, 255, 255, 0.6);
  /* background: #fff; */
  z-index: 2;
  bottom: .8rem;
  right: .5rem;
  text-align: center;

}
.posi_btn i{
  display: inline-block;
  width: 0.82223rem;
  height: 0.82223rem;
  line-height: 0.82223rem;
}
.posi_btn .my_posi{
  background: url("http://127.0.0.1:5050/detail/det_my_posi.png") no-repeat;
  background-size: 100%;
}
.posi_btn .room_posi{
  background: url("http://127.0.0.1:5050/detail/det_room_posi.png") no-repeat;
  background-size: 100%;
}
</style>