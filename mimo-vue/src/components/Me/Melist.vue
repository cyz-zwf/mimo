<template>
    <div class="order">
      <div></div>
      <div>
        <ul>
          <li>
            <img src="http://127.0.0.1:5050/Me/ic_dd.png" />
            <p>全部订单</p>
            <p class="bg_list">查看订单详情</p>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/Me/ic_fp.png" />
            <p>开具发票</p>
            <p class="bg_list">发票历史及抬头</p>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/Me/ic_ms.png" />
            <p>打开门锁</p>
            <p class="bg_list">预定后可使用</p>
          </li>
        </ul>
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:["我的订单","我的钱包"]
        }
    }
};
</script>
<style scoped>
.order {
  font-size: 0.4rem;
  height: 4rem;
  padding: 0.3rem;
  background: #fff;
  border-bottom-left-radius: 0.2rem;
  border-bottom-right-radius: 0.2rem;
  margin-bottom:0.4rem;
}
.order ul {
  list-style-type: none;
  display: flex;
  justify-content: space-between;
}
.order ul li p {
  display: flex;
  justify-content: center;
  margin-left: -0.45rem;
  margin-top: 0.1rem;
}
.order ul li p.bg_list {
  color: #999;
  font-size: 0.15rem;
  margin-top: -0.2rem;
}
</style>