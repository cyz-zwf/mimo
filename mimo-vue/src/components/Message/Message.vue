<template>
    <div class="Message">
    <div class="top">
      <div class="title">消息</div>
      <img src="http://127.0.0.1:5050/images/message/jingzi.png" class="jingzi">
    </div>
    <div class="MessageList" >
        <img src="http://127.0.0.1:5050/images/message/ic_zus.png" class="image">
        <div class="MessageRight">
            <div>系统消息</div>
            <div class="mg-t">暂无系统消息</div>
        </div>
    </div>
    <div class="MessageList" >
        <img src="http://127.0.0.1:5050/images/message/ic_huodong.png" class="image">
        <div class="MessageRight">
            <div class="active">优惠活动 <span>2019-8-9</span> </div>
            <div class="mg-t">新店开业 .0元免费试睡,房券4折/晚</div>
        </div>
    </div>
    <div class="MessageList" >
        <img src="http://127.0.0.1:5050/images/message/ic_youhui.png" class="image">
        <div class="MessageRight">
            <div class="active">小猫订房助手<span>2019-8-10</span></div>
            <div class="mg-t">为您推荐位于广州的优秀房源,下单即可...</div>
        </div>
    </div>
  </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
.Message div.top {
  height: 1.6rem;
  display: flex;
  border-bottom:.01rem solid rgba(158, 154, 154 ,.8);
  line-height: 1.8rem;
  font-size:0.4rem;
}
.Message div.title{
  margin: auto;
  margin-left:4.5rem;
}
 .jingzi{
   width:1rem;
    height:1rem;
    position:relative;
    top:0.4rem;
    right:0.2rem;
} 
.MessageList{
  display:flex;
  border-bottom:.01rem solid rgba(158, 154, 154 ,.8);
  padding:0.8rem 0.4rem 0.8rem 0.4rem ;
}
.MessageList .image{
  margin-right:0.5rem;
}
.active span{
  position:absolute;
  right:0.2rem;
  color:#999;
}
.mg-t{
  margin-top:0.2rem;
}
</style>