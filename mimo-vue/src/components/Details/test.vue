<template>
  <div>
    <div id="allmap"></div>
  </div>
</template>
<script>
export default {
  mounted() {
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(116.331398, 39.897445);
    map.centerAndZoom(point, 12);

    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(
      function(r) {
        if (this.getStatus() == BMAP_STATUS_SUCCESS) {
          var mk = new BMap.Marker(r.point);
          map.addOverlay(mk);
          map.panTo(r.point);
          console.log("您的位置：" + r.point.lng + "," + r.point.lat);
        } else {
          alert("failed" + this.getStatus());
        }
      },
      { enableHighAccuracy: true }
    );
  }
};
</script>
<style scoped>
#allmap {
  width: 100%;
  height: 300px;
  overflow: hidden;
  margin: 0;
  font-family: "微软雅黑";
}
</style>