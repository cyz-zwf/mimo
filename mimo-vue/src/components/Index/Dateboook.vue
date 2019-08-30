<template>
  <div class="datebook">
    <div class="date">
      <div class="back-index">
        <img src="http://127.0.0.1:5050/images/Search/ic_btn1.png" @click="jumpIndex" />
        <span>选择日期</span>
      </div>
      <div class="month-handler">
        <div class="prev" @click="loadShowDate(-1)"></div>
        <div class="next" @click="loadShowDate(1)"></div>
      </div>
      <div class="title-wrap">
        <h4 class="title">
          {{date.year}}
          <small>年</small>
          {{date.month}}
          <small>月</small>
        </h4>
      </div>
      <!-- 日期 -->
      <ul class="week-title">
        <li v-for="n of 7" class="week-item">{{n | weekFilter}}</li>
      </ul>
      <ul class="date-book">
        <li v-for="item of dayNum" v-text="item" class="day-cur before"></li>
        <li
          v-for="n of date.dayCount"
          v-text="n"
          :class="{'day-cur':isReady,'before':n<date.day&&num==0,'out-of-count':n>date.dayCount,yellowIn:n==day_in,yellowLive:n>day_in&&n<day_out,yellowOut:n==day_out,noThisMonth:!date.isThisMonth}"
          @click="choose(n)"
        ></li>
      </ul>
    </div>
    <!-- <h2>{{liveCount}}</h2> -->
    <div class="date-btn" @click="getDate">
      <span class="date-ben-span">确认</span>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      /**
       * date 日期,日期对象,存放
       * 1.year 年份
       * 2.month 月份
       * 3.day 日期
       * 4.dayCount 日期数,每月多少天
       * -5.is366 是否闰年 不存入对象,只在获取时间时获取并判断
       */
      date: {},
      /**
       * choose_status 节点,点击时获取选择的节点判断,入住/退房
       * 1. true - 入住
       * 2. false - 退房
       */
      choose_status: true,
      /**
       * day_in 入住日期
       * 当 choose_status为 true 时,点击获取的数值存入
       */
      day_in: undefined,
      /**
       * day_out 退房日期
       * 当 choose_status为 true 时,点击获取的数值存入
       */
      day_out: undefined,
      /**
       * limit [ in, out ] 房源可入住日期
       * 可由父->子,获取入住起始->结束的日期,但是不使用,那就不要
       */
      // limit: [0,0]
      /**
       * isReady 房源可入住(由父组件获取当前房源是否可入住)
       * 1.true  有 ,默认为true
       * 2.false 无
       */
      isReady: true,

      /**
       * 带有星期标记的,需要把当月第一天的星期n取出,补充n-1位
       * dayNum
       */
      dayNum: [],
      /**
       * num 上个月或下个月的日历标记,0表示当月,1是下个月,2是下下个月
       */
      num: 0,
      /**
       * 初始化日期date_init
       */
      date_init: {}
    };
  },
  methods: {
    /* 初始化日期 */
    loadDateInit() {
      let now = new Date();
      let year = now.getFullYear();
      let is366 =
        (year % 4 == 0 && year % 100 !== 0) || year % 400 == 0 ? 1 : 0;
      let day = now.getDate();
      let dayCount = 0;
      let month = now.getMonth();
      switch (month) {
        case 0:
          dayCount = 31;
          break;
        case 1:
          dayCount = is366 ? 29 : 28;
          break;
        case 2:
          dayCount = 31;
          break;
        case 3:
          dayCount = 30;
          break;
        case 4:
          dayCount = 31;
          break;
        case 5:
          dayCount = 30;
          break;
        case 6:
          dayCount = 31;
          break;
        case 7:
          dayCount = 31;
          break;
        case 8:
          dayCount = 30;
          break;
        case 9:
          dayCount = 31;
          break;
        case 10:
          dayCount = 30;
          break;
        case 11:
          dayCount = 31;
          break;
      }
      // 显示月份+n
      month = month + 1;
      // 处理月份显示 + "0"
      month = month < 10 ? "0" + month : month;
      // console.log(now.getTime());
      // let time = now.getTime();
      // 判断是否本月
      // let isThisMonth = true;
      this.date.isThisMonth = true;
      let date = {
        year,
        // is366,
        month,
        day,
        dayCount
        // time
      };
      this.date_init = date;
      console.log(this.date_init);
    },
    /**
     * 加载显示日期v2.0 */
    loadShowDate(m) {
      // 切换月份是初始化入住状态
      this.day_in = undefined;
      this.day_out = undefined;
      this.choose_status = true;

      this.num = this.num + m;
      if (this.num < 0) {
        this.num = 0;
        return;
      }
      let n = this.num;
      // n = 2;
      let now = new Date();
      let month = now.getMonth();
      if (month + n + 1 > 12) {
        return;
      }
      // 将月份设置为上个月或下个月的月份
      new Date(now.setMonth(now.getMonth() + n));
      // console.log(now);
      let year = now.getFullYear();
      let is366 =
        (year % 4 == 0 && year % 100 !== 0) || year % 400 == 0 ? 1 : 0;
      let day = now.getDate();
      let dayCount = 0;
      month = now.getMonth();
      switch (month) {
        case 0:
          dayCount = 31;
          break;
        case 1:
          dayCount = is366 ? 29 : 28;
          break;
        case 2:
          dayCount = 31;
          break;
        case 3:
          dayCount = 30;
          break;
        case 4:
          dayCount = 31;
          break;
        case 5:
          dayCount = 30;
          break;
        case 6:
          dayCount = 31;
          break;
        case 7:
          dayCount = 31;
          break;
        case 8:
          dayCount = 30;
          break;
        case 9:
          dayCount = 31;
          break;
        case 10:
          dayCount = 30;
          break;
        case 11:
          dayCount = 31;
          break;
      }
      // 显示月份+n
      month = month + 1;
      // 处理月份显示 + "0"
      month = month < 10 ? "0" + month : month;
      // console.log(now.getTime());
      // let time = now.getTime();

      // 判断是否本月
      let isThisMonth = true;
      if (this.num == 0) {
        isThisMonth = true;
      } else {
        isThisMonth = false;
      }

      let date = {
        year,
        // is366,
        month,
        day,
        dayCount,
        isThisMonth
        // time
      };
      this.date = date;
      console.log(this.date);
      // 设置当前时间为本月01日,获取此天的星期标记
      let firstDay = now.setDate(1);
      console.log(now);
      console.log(now.getDay());
      // 实际排列日期,在本月01日(周n)前插入n-1个空,达到实际排列效果
      let count = now.getDay();
      if (count == 0) {
        count = 7;
      }
      this.dayNum = [];
      for (let j = 0; j < count - 1; j++) {
        this.dayNum.unshift("x");
      }
    },
    /**
     *  选择入住退房 */
    choose(n) {
      //入住还是退房状态
      let cs = this.choose_status;
      // 如果是本月分则
      console.log(this.date.isThisMonth);
      if (this.date.isThisMonth) {
        // 点击今日前的日期则返回
        console.log(this.date_init.day);
        if (n < this.date_init.day) return;
      }
      // 两次都点同一天入住
      if (n == this.day_in) return;

      // 入住状态 cs-true
      if (cs) {
        this.day_in = undefined;
        this.day_out = undefined;
        this.day_in = n;
      }
      // 退房状态 cs-false
      else {
        // 退房状态点击的日期小于入住日期,修改入住日期
        if (n < this.day_in) {
          this.day_in = n;
          return;
        } else {
          //
          this.day_out = n;
          // 执行计算入住日期或计费的函数在这里,还没写,那就先空着
          // this.computeSale();
        }
      }
      this.choose_status = !cs;
      console.log(this.day_in, this.day_out);
    },
    getDate() {
      var dateNum = this.day_out - this.day_in;
      var dateobj = {};
      dateobj.dateToday =
        this.date.year + "年" + this.date.month + "月" + this.day_in + "日";
      dateobj.dateTomorrow =
        this.date.year + "年" + this.date.month + "月" + this.day_out + "日";
      dateobj.dateNum = dateNum;
      if (isNaN(dateobj.dateNum)) {
        this.$toast({
          message: "未选择日期", //提示信息
          duration: 1000 // 提示框显示时间
        });
      } else {
        this.$store.commit("dateinfo", dateobj);
        // console.log(this.$store.getters.getDateInfo);
        this.$router.push("/");
      }
    },
    jumpIndex() {
      this.$router.push("/");
    }
  },
  created() {
    this.loadDateInit();
    this.loadShowDate(0);
  },
  computed: {
    liveCount() {
      return this.day_out - this.day_in + 1 || 0;
    }
  }
};
</script>
<style scoped>
/* * {
  padding: 0;
  margin: 0;
}
ul {
  list-style: none;
} */

.datebook {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  min-width: 375px;
  min-height: 667px;
  background: rgba(0, 0, 0, 0.05);
}
.date {
  width: 300px;
  height: 667px;
  /* margin: 0 auto; */
  position: relative;
}
/* 月份前后 */
.date .month-handler {
  width: 300px;
  position: absolute;
  top: 100px;
  /* top: 6px; */
  z-index: 10;
  left: 0;
  display: flex;
  justify-content: space-around;
}
.date .month-handler > div {
  width: 20px;
  height: 20px;
  border: 1px solid lightgray;
  border-radius: 4px;
  position: relative;
  background: #fff;
}
.date .month-handler > div::before {
  content: "";
  display: block;
  width: 10px;
  height: 10px;
  border: 2px solid #666;
  border-left: none;
  border-bottom: none;
  position: absolute;
  top: 50%;
  left: 50%;
}
.date .month-handler > div.prev::before {
  transform: translate(-35%, -50%) rotate(-135deg);
}
.date .month-handler > div.next::before {
  transform: translate(-65%, -50%) rotate(45deg);
}

/* 年月标题 */
.date .title-wrap {
  width: 100%;
  position: absolute;
  top: 100px;
}
.date .title-wrap .title {
  font-size: 16px;
  margin: 0;
  text-shadow: 1px 1px 2px #aaa;
  text-align: center;
  color: #000;
}
.date .title-wrap .title small {
  color: #999;
  font-weight: 500;
}

/* 星期标记 */
.week-title {
  display: flex;
  width: 300px;
  /* height: 20px; */
  justify-content: space-between;
  padding: 10px;
  box-sizing: border-box;
  font-size: 12px;
  /* font-weight: bold; */
  color: #000;
  text-shadow: 1px 1px 2px #aaa;
  position: absolute;
  top: 120px;
}
.week-title .week-item {
  flex: 1;
  background: #fff;
  border-radius: 4px;
  text-align: center;
  height: 20px;
  line-height: 20px;
}
/* 日历主体 */
.date ul.date-book {
  list-style: none;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  padding: 10px;
  padding-top: 0;
  width: 302px;
  margin: 0 auto;
  box-sizing: border-box;
  align-items: center;
  text-align: center;
  position: absolute;
  top: 160px;
}

.date ul.date-book li.day-cur {
  width: 40px;
  height: 40px;
  box-sizing: border-box;
  /* background: #f1f1f1; */
  /* margin: 10px; */
  cursor: pointer;
  font-size: 14px;
  line-height: 36px;
  border-radius: 8px;
  border: 1px solid lightgray;
  letter-spacing: 0.11em;
  box-shadow: 1px 1px 8px 0px lightgray;
  background: #fff;
}
.date ul.date-book li.day-cur:nth-child(n + 7) {
  margin-top: -1px;
}
.date ul.date-book li.day-cur:not(:nth-child(7n)) {
  border-right: 0;
}
.date ul.date-book li.day-cur:nth-child(31) {
  border-right: 1px solid lightgray;
  width: 41px;
}

.yellowIn {
  color: #fff !important;
  font-weight: 700;
  background: #e64966 !important;
}
.yellowIn::after {
  content: "入";
  font-size: 6px !important;
  font-weight: bold;
  width: 20px;
  font-weight: 700;
  height: 20px;
  letter-spacing: 0em;
}
.yellowLive {
  color: #fff !important;
  background: #f16b80 !important;
}
.yellowOut {
  font-weight: 700;
  color: #fff !important;
  background: #e64966 !important;
}
.yellowOut::after {
  content: "退";
  font-size: 6px !important;
  font-weight: 700;
  font-weight: bold;
  width: 20px;
  height: 20px;
}
.before {
  color: #999;
  font-weight: 500 !important;
  /* background: #ccc !important; */
}
.out-of-count {
  color: #e1e1e1;
  font-weight: 500 !important;
  /* background: #ccc !important; */
}
.noThisMonth {
  color: #000;
}

.date-btn,
.back-index {
  width: 79%;
  height: 40px;
  background: #f16b80;
  position: absolute;
  top: 365px;
  left: 42px;
  border-radius: 5px;
  text-align: center;
  line-height: 40px;
}
.date-btn .date-ben-span {
  font-size: 16px;
  color: #fff;
}
.back-index {
  background: #fff;
  box-sizing: border-box;
  width: 97%;
  top: 52px;
  left: 5px;
  text-align: center;
  line-height: 40px;
  font-size: 16px;
}
.back-index img {
  width: 25px;
  height: 25px;
  float: left;
  margin-top: 6px;
}
</style>