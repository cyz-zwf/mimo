<template>
  <div class="detail" id="div">
    <!-- 顶部条 -->
    <mt-header fixed :class="{'is_white':isWhite}">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" class="share" ></mt-button>
      <mt-button slot="right" class="heart" :class="{'is_collect':isCollect}" @click="collection"></mt-button>
    </mt-header>
    <!-- 主体部分 -->
    <div class="detail_main">
      <!-- 轮播图 -->
      <div class="detail_top">
        <mt-swipe :auto="4000">
          <mt-swipe-item>
            <img src="http://127.0.0.1:5050/images/detail/yuanben1.jpg" class="swipe_img" />
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="http://127.0.0.1:5050/images/detail/yuanben2.jpg" class="swipe_img" />
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="http://127.0.0.1:5050/images/detail/yuanben3.jpg" class="swipe_img" />
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="http://127.0.0.1:5050/images/detail/yuanben4.jpg" class="swipe_img" />
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="http://127.0.0.1:5050/images/detail/yuanben5.jpg" class="swipe_img" />
          </mt-swipe-item>
        </mt-swipe>
      </div>
      <!-- 详情 -->
      <div class="detail_con">
        <!-- Part1 -->
        <div class="center_div">
          <!-- 标签 -->
          <div class="icon_div">
            <span>
              <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />速订
            </span>
            <span>
              <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />长租
            </span>
            <span>
              <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />优品
            </span>
            <span>
              <img src="http://127.0.0.1:5050/images/detail/det_icon.png" />商旅首选
            </span>
          </div>
          <!-- 标题 -->
          <h2 class="detail_title">原本【空岛】奥帆，禅意智能海景民宿，地铁房</h2>
          <!-- 价格 -->
          <p class="price_all">
            ￥ 1790
            <span class="price_all_count">起/晚</span>
          </p>
          <!-- 活动 -->
          <div class="detail_active">
            <p>
              <span>促销</span>
              <span class="spec_act">9折畅游</span>
              <span class="spec_act">满30天8折</span>
              <span class="spec_act">满7天9折</span>
              <img class="active_icon" src="http://127.0.0.1:5050/images/detail/det_act_more.png" />
            </p>
          </div>
          <!-- 信息 -->
          <div class="detail_info">
            <div class="info_threeicon">
              <div @click="explain0">
                <img src="http://127.0.0.1:5050/images/detail/det_house.png" />
                <p>整套出租</p>
                <div class="info_arrow" v-if="explain==0"></div>
              </div>
              <div @click="explain1">
                <img src="http://127.0.0.1:5050/images/detail/det_people.png" />
                <p>宜住7人</p>
                <div class="info_arrow" v-if="explain==1"></div>
              </div>
              <div @click="explain2">
                <img src="http://127.0.0.1:5050/images/detail/det_bed.png" />
                <p>共3张</p>
                <div class="info_arrow" v-if="explain==2"></div>
              </div>
            </div>
            <div class="info_explain" v-if="explain==0">
              <p>整套160平米 2室2厅2卫1厨1阳台</p>
            </div>
            <div class="info_explain" v-else-if="explain==1">
              <p>房客独享整套房屋</p>
            </div>
            <div class="info_explain" v-else>
              <p>双人床 1.5m宽 × 2m长 × 1张</p>
              <p>双人床 1.8m宽 × 2m长 × 1张</p>
              <p>榻榻米 2.2m宽 × 3.6m长 × 1张</p>
            </div>
            <div class="info_owner">
              <img src="http://127.0.0.1:5050/images/detail/det_owner.jpg" class="owner_img" />
              <p class="room_name">mimo原本民宿</p>
              <p class="realIdentity">已实名认证</p>
            </div>
          </div>
        </div>
        <!-- Part2 描述 -->
        <div class="info_colunm">
          <p class="p_left">
            <span class="info_title">房源描述</span>
            <span class="more_descri more_span" @click="moreDescri">{{descri?"展开":"收起"}}</span>
          </p>
          <div v-if="descri">
            <p class="info_descri_short">
              180度无敌海景&开敞阳台零距离!
              <br />智能科技，绝佳体验，尊重人性放第一！
              <br />复式大宅，上下分区，动静有秩又有序！
              <br />卧室客厅皆南向，随心所欲沐阳光！
              <br />房间皆为落地窗，日光倾海地暖房！
              <br />海景花园？蔷薇漫步，诗意栖居！
              <br />中国禅意风，时尚ins风?
              <br />有民族,又国际,海纳百川般碰撞!
              <br />拍!拍!拍!文艺青年怒刷朋友圈!
              <br />品茗闻香,以茶会友,雅俗共同赏!
              <br />
            </p>
            <Pre class="info_descri"></Pre>
          </div>
          <div v-else-if="!descri">
            <p class="info_descri">
              <strong>|个性描述</strong>
              <br />180度无敌海景&开敞阳台零距离!
              <br />智能科技，绝佳体验，尊重人性放第一！
              <br />复式大宅，上下分区，动静有秩又有序！
              <br />卧室客厅皆南向，随心所欲沐阳光！
              <br />房间皆为落地窗，日光倾海地暖房！
              <br />海景花园？蔷薇漫步，诗意栖居
              <br />中国禅意风，时尚ins风?
              <br />有民族,又国际,海纳百川般碰撞!
              <br />拍!拍!拍!文艺青年怒刷朋友圈!
              <br />品茗闻香,以茶会友,雅俗共同赏!
              <br />电玩无线，麻将桌游,聚会玩的爽
              <br />炒菜水饺再火锅,吃嘛嘛都香!
              <br />家庭出游,朋友聚会，商务旅行，绝佳好房！
              <br /><strong>【一楼设施】</strong> 
              <br />1.榻榻米茶室超大号,茶具一应俱全,您可以在上面随意翻滚。
              如果要在这睡觉,请提前联系好我给您备好各种床品。
              2.客厅宽敞明亮,配备了空调,电视,电视盒子,游戏机,集合了
              安卓、小霸王、街机和PS2模拟器的各种经典游戏!还有一个智
              能音箱,你可以随时吆喝他让他为您控制电灯电器、播放歌曲,
              天气预报,故事,相声等。
              3.我家有俩娃娃,深知带孩子不易,所以特意设置了儿童区读书
              角,让他们能有自己的天地。
              4.房主的媳妇是个爱花的人,这里的大部分角落都有植物,美化
              环境,做您的空气卫士。
              5.厨房免费提供给您,厨具齐全,巧妇男厨们快来秀一把!不会的
              人不用担心,房东偷偷给你备了一本海鲜菜谱☺。里面提前备好了
              些饮料,啤酒,扑克等,不过要先付费喔,跟楼下超市一个价。
              6.如果有人睡在榻榻米上,一楼的卫生间也是能洗澡的噢。
              7.各种装饰品都是精心挑选,还有一些曾经热衷收藏的海贼王手
              办,也拿来与您一起分享了。
              8.阳台风景很好,风花雪月可以,不要嬉戏打闹,不要高空抛物,
              请注意安全!
              <br /><strong>【二楼设施】</strong> 
              <br />1.休闲厅里有自动麻将桌,同时准备了三国杀桌游等，随时可以
              跟朋友激情互动。
              2.卧室在二楼,可以与一楼动静分离,互不打扰,该嗨就嗨。
              3.两个超大卧室,一个偏中式,一个小清新,床品选用的超级舒服
              的埃及棉,俺丈母娘纯手工制造,女红无敌,天然无污染!卧室里
              面布置了空调,衣架,镜子,天文望远镜。
              4.衣帽间现在已经被我改成了布草间,是进不去的噢
              5.二楼卫生间很大,24小时热水,洗衣机,吹风机,儿童马桶,洗澡
              什么的都很宽敞方便。建议您自带洁具,如果没带,没事!我这儿
              给您备好了一次性的牙刷,香皂,口杯。毛巾浴巾也是每客必换,
              各种消毒。
              6.二楼宽敞大阳台可供您晾晒许多被褥跟衣服
            </p>
          </div>
        </div>
        <!-- Part3 点评 -->
        <div class="info_colunm">
          <p class="p_left">
            <span class="info_title">房客点评</span>
            <span class="more_comment more_span">
              全部点评
              <i></i>
            </span>
          </p>
          <div class="show_comment">
            <div class="stars">
              <span>
                <img src="http://127.0.0.1:5050/images/detail/det_star.png" />
              </span>
              <span>
                <img src="http://127.0.0.1:5050/images/detail/det_star.png" />
              </span>
              <span>
                <img src="http://127.0.0.1:5050/images/detail/det_star.png" />
              </span>
              <span>
                <img src="http://127.0.0.1:5050/images/detail/det_star.png" />
              </span>
              <span>
                <img src="http://127.0.0.1:5050/images/detail/det_star.png" />
              </span>
            </div>
            <div class="rate_core">
              5
              <span class="core_arrow"></span>
            </div>
          </div>
          <div class="comment_con">
            <p class="tenant_name">猫多和杰多</p>
            <p class="tenant_time">2019-07-15入住</p>
            <p
              class="tenant_comment"
            >给房东一个大大的好评，沟通非常轻松，回复问题很快，各种贴士做的简单易懂，朋友们都说我会选。逛街出行交通方便，去的这两天温度低，但房间里暖气很足，房子不管是硬件还是软件都深得朋友们喜爱，住着不想走了，下次带家人出行还选你家哦！</p>
            <p class="comm_imgs">
              <img src="http://127.0.0.1:5050/images/detail/det_comm1.jpg" />
              <img src="http://127.0.0.1:5050/images/detail/det_comm2.jpg" />
              <img src="http://127.0.0.1:5050/images/detail/det_comm3.jpg" />
              <span>+7</span>
            </p>
          </div>
          <div class="comment_con">
            <p class="tenant_name">猫多和杰多</p>
            <p class="tenant_time">2019-07-15入住</p>
            <p
              class="tenant_comment"
            >给房东一个大大的好评，沟通非常轻松，回复问题很快，各种贴士做的简单易懂，朋友们都说我会选。逛街出行交通方便，去的这两天温度低，但房间里暖气很足，房子不管是硬件还是软件都深得朋友们喜爱，住着不想走了，下次带家人出行还选你家哦！</p>
            <p class="comm_imgs">
              <img src="http://127.0.0.1:5050/images/detail/det_comm1.jpg" />
              <img src="http://127.0.0.1:5050/images/detail/det_comm2.jpg" />
              <img src="http://127.0.0.1:5050/images/detail/det_comm3.jpg" />
              <span>+7</span>
            </p>
          </div>
          <mt-button size="large" plain>查看全部65条评价</mt-button>
        </div>
        <!-- Part4 位置 -->
        <div class="info_colunm">
          <p class="p_left">
            <span class="info_title">房源位置</span>
            <span class="more_position more_span" @click="toMap">
              详细地理位置
              <i></i>
            </span>
          </p>
          <!-- 地图 -->
          <div id="allmap" @click="toMap"></div>
          <p class="map_p">
            <i></i>
            <span>山东省青岛市市南区东海中路18号海悦中心</span>
          </p>
        </div>
        <!-- Part5 日期 -->
        <div class="info_colunm">
          <p class="p_left">
            <span class="info_title">可租日期</span>
          </p>
          <div id="calendar"></div>
        </div>
        <!-- Part6 -->
        <img class="banner_img" src="http://127.0.0.1:5050/images/detail/yuanben2.jpg" />
        <!-- Part7 设施 -->
        <div class="info_colunm">
          <p class="p_left">
            <span class="info_title">配套设施</span>
            <span class="more_facilities more_span">已安装mimo智能门锁</span>
          </p>
          <ul class="facilitie_ul">
            <li>
              <i class="iconfont icon-linyu facilitie_icon"></i>
              <p class="facilitie_linyu">热水淋浴</p>
            </li>
            <li>
              <i class="iconfont icon-wifi facilitie_icon"></i>
              <p class="facilitie_wifi">无线网络</p>
            </li>
            <li>
              <i class="iconfont icon-kongdiao facilitie_icon"></i>
              <p class="facilitie_kongdiao">空调</p>
            </li>
            <li>
              <i class="iconfont icon-TV facilitie_icon"></i>
              <p class="facilitie_TV">电视</p>
            </li>
            <li>
              <i class="iconfont icon-dianti facilitie_icon"></i>
              <p class="facilitie_dianti">电梯</p>
            </li>
            <li>
              <i class="iconfont icon-menjin facilitie_icon"></i>
              <p class="facilitie_menjin">门禁系统</p>
            </li>
            <li>
              <i class="iconfont icon-icon-xiyiji facilitie_icon"></i>
              <p class="facilitie_xiyiji">洗衣机</p>
            </li>
            <li>
              <i class="iconfont icon-bingxiang facilitie_icon"></i>
              <p class="facilitie_bingxiang">冰箱</p>
            </li>
            <li>
              <i class="iconfont icon-bingxiang facilitie_icon"></i>
              <p class="facilitie_bingxiang">停车位</p>
            </li>
            <li>
              <i class="iconfont icon-taiyangtianqi facilitie_icon"></i>
              <p class="facilitie_taiyang">暖气</p>
            </li>
            <li>
              <i class="iconfont icon-tuoxie facilitie_icon"></i>
              <p class="facilitie_tuoxie">拖鞋</p>
            </li>
            <li>
              <i class="iconfont icon-juanzhi facilitie_icon"></i>
              <p class="facilitie_juanzhi">手纸</p>
            </li>
            <li>
              <i class="iconfont icon-yaju facilitie_icon"></i>
              <p class="facilitie_yaju">牙具</p>
            </li>
            <li>
              <i class="iconfont icon-maojin facilitie_icon"></i>
              <p class="facilitie_maojin">毛巾</p>
            </li>
            <li>
              <i class="iconfont icon-muyulou facilitie_icon"></i>
              <p class="facilitie_muyulou">浴液</p>
            </li>
            <li>
              <i class="iconfont icon-meishi facilitie_icon"></i>
              <p class="facilitie_meishi">允许做饭</p>
            </li>
            <li>
              <i class="iconfont icon-yingyuanxinxiertongpiao facilitie_icon"></i>
              <p class="facilitie_ertong">适宜儿童</p>
            </li>
            <li>
              <i class="iconfont icon-laoren facilitie_icon"></i>
              <p class="facilitie_laoren">适宜老人</p>
            </li>
            <li>
              <i class="iconfont icon-yinshuiji- facilitie_icon facilitie_hide"></i>
              <p class="facilitie_yinshuiji">饮水设备</p>
            </li>
            <li>
              <i class="iconfont icon-yugang1 facilitie_icon facilitie_hide"></i>
              <p class="facilitie_yugang">浴缸</p>
            </li>
            <li>
              <i class="iconfont icon-xiyan facilitie_icon facilitie_hide"></i>
              <p class="facilitie_xiyan">允许吸烟</p>
            </li>
            <li>
              <i class="iconfont icon-jiubei facilitie_icon facilitie_hide"></i>
              <p class="facilitie_jiubei">允许聚会</p>
            </li>
            <li>
              <i class="iconfont icon-chongwu facilitie_icon facilitie_hide"></i>
              <p class="facilitie_chongwu">允许带宠物</p>
            </li>
            <li>
              <i class="iconfont icon-lunyi facilitie_icon facilitie_hide"></i>
              <p class="facilitie_lunyi">适宜残疾人</p>
            </li>
          </ul>
        </div>
        <!-- Part8 -->
        <img class="banner_img" src="http://127.0.0.1:5050/images/detail/yuanben4.jpg" />
        <!-- Part9 规则 -->
        <div class="info_colunm">
          <p class="p_left">
            <span class="info_title">交易规则</span>
          </p>
          <p class="rule_title">
            <i></i>
            <span>预定方式</span>
          </p>
          <p class="rule_detail">下单即可入住，无需房东确认</p>
          <p class="rule_title">
            <i></i>
            <span>入住天数</span>
          </p>
          <p class="rule_detail">最少入住一天，最多入住不限天</p>
          <p class="rule_title">
            <i></i>
            <span>在线定金比</span>
          </p>
          <p class="rule_detail">订单确认后，在线支付房款的100%作为定金</p>
          <p class="rule_title">
            <span class="no_icon">押金</span>
          </p>
          <p class="rule_detail cashfree">￥1000，立即认证免押 ></p>
          <p class="rule_title">
            <span class="no_icon">加客</span>
          </p>
          <p class="rule_detail">允许加客1人，加客费用线下收取舒适上限入住为七个成年人，或者七个成年人带3个孩子。超过8人按每多一人收取费用</p>
          <p class="rule_title">
            <i></i>
            <span>入住须知</span>
          </p>
          <p class="rule_detail">独立卫生间，允许做饭，不允许吸烟，不允许聚会，不允许带宠物，接待境外人士</p>
          <p class="more_rule">入住细则 ></p>
        </div>
        <!-- Part10 退订 -->
        <div class="info_colunm unsubscribe">
          <p class="p_left">
            <span class="info_title">退订须知</span>
          </p>
          <div class="unsubscribe_rule">
            <p class="iconP iconP1">
              <i class="ruleicon">
                <img src="http://127.0.0.1:5050/images/detail/det_time.png" />
              </i>
              入住前7天14.00前取消，所有金额全部退还
            </p>
            <p class="iconP">
              <i class="ruleicon">
                <img src="http://127.0.0.1:5050/images/detail/det_time.png" />
              </i>
              入住前7天14.00后取消，扣除未入住首日房费，以及剩余房费的50%
            </p>
          </div>
        </div>
        <!-- Part11 推荐 -->
        <div class="info_colunm">
          <!-- <p class="p_left">
            <span class="info_title">推荐房源</span>
          </p> -->
          <recommend></recommend>
        </div>
      </div>
    </div>
    <!-- 底部固定栏 -->
    <div class="order_btn">
      <div class="order_btn_chat">
        <i></i>
        <p>聊天</p>
      </div>
      <div class="order_btn_submit">
        <span>立即预定</span>
        <i></i>
      </div>
      <div style="width:20%"></div>
    </div>
  </div>
</template>
<script>
import Recommend from '../common/Recommend'
export default {
  data() {
    return {
      url:"http://127.0.0.1:5050/images/detail/",
      explain: 0,
      isWhite:false, //顶部栏的背景颜色
      descri: true,
      isCollect: false, //是否收藏
      date: "", //当前选中日期
    };
  },
  components:{
    "recommend":Recommend
  },
  methods: {
    collection() {
      var btn = document.getElementsByClassName("heart")[0];
      this.isCollect = !this.isCollect;
    },
    explain0() {
      this.explain = 0;
    },
    explain1() {
      this.explain = 1;
    },
    explain2() {
      this.explain = 2;
    },
    moreDescri() {
      this.descri = !this.descri;
    },
    // 地图
    map() {
      var map = new BMap.Map("allmap");
      var point = new BMap.Point(120.408772, 36.063611);
      map.centerAndZoom(point, 19);
      map.enableScrollWheelZoom(true); //利用鼠标滚轮控制大小
      var myIcon = new BMap.Icon(
        "http://127.0.0.1:5050/images/detail/det_marker.png",
        new BMap.Size(23, 40)
      );
      var marker = new BMap.Marker(point, { icon: myIcon });
      map.addOverlay(marker);
      map.disableDragging(); //禁止拖拽
    },
    toMap() {
      this.$router.push("/map"); //跳转去map组件
    },
    // 日历
    calendar() {
      laydate.render({
        elem: "#calendar", //指定元素
        // trigger: 'foucus',
        value: new Date(),
        theme: "#F16B80",
        show: true,
        position: "static",
        showBottom: false,
        min: 0, //7天前
        ready: function(date) {
          this.date = `${date.year}-${
            date.month.length > 1 ? date.month : "0" + date.month
          }-${date.date.length > 1 ? date.date : "0" + date.date}`;
          var main = document.getElementsByClassName("layui-laydate-main")[0];
          main.style.width = "340px";
          var con = document.getElementsByClassName("layui-laydate-content")[0];
          con.style.border = 0;
          var date = document.querySelectorAll(".layui-laydate-content td");
          for (var item of date) {
            item.style.width = "60px";
          }
          var choosedate = document.getElementsByClassName("layui-this")[0];
          choosedate.classList.add("cur_date");
          // var curDate = document.getElementsByClassName("cur_date")[0];
          // curDate.innerHTML = "今";
        },
        change: function(value, date, endDate) {
          this.date = value; //得到日期生成的值
          // var curDate = document.getElementsByClassName("cur_date")[0];
          // curDate.innerHTML = "今";
        }
      });
    },
    handleScroll: function() {
      this.scroll = document.documentElement.scrollTop || document.body.scrollTop;
      // console.log(this.scroll)
      if(this.scroll>=300){
        this.isWhite=true
      }else{
        this.isWhite=false
      }
    }
  },
  mounted() {
    this.map();
    this.calendar();
    window.addEventListener("scroll", this.handleScroll, true); // 监听（绑定）滚轮滚动事件
    var curDate = document.getElementsByClassName("cur_date")[0];
    curDate.innerHTML = "今";
  },
  // 离开页面时
  destroyed() {
    window.removeEventListener("scroll", this.handleScroll); //  离开页面清除（移除）滚轮滚动事件
  }
};
</script>
<style scoped>
.detail {
  width: 100%;
  padding-bottom: 1.46667rem;
}
.detail p {
  font-size: 0.373333rem;
  margin: 0;
  line-height: 0.533333rem;
}
/* 顶部栏 */
button.mint-button--default{
  color: #fff !important;
}
.is_white button.mint-button--default{
  color: #000 !important;
}
.mint-header {
  background-color: transparent;
  z-index: 2;
}
.is_white{
  background: #fff;
  border-bottom: 1px solid #ddd;
}
.share {
  background-image: url("http://127.0.0.1:5050/images/detail/det_share.png");
  background-repeat:  no-repeat;
  background-size: 100%;
  width: 0.6rem;
  margin-top: 0.45rem;
  margin-right: 0.25rem;
}
.heart {
  background-image: url("http://127.0.0.1:5050/images/detail/det_heart.png");
  background-repeat:  no-repeat;
  background-size: 100%;
  width: 0.6rem;
}

.is_white .share{
  background-image: url("http://127.0.0.1:5050/images/detail/det_share_black.png");
}
.is_white .heart{
  background-image: url("http://127.0.0.1:5050/images/detail/det_heart_black.png");
}
.detail .is_collect{
  background-image: url("http://127.0.0.1:5050/images/detail/det_heart_selected.png");
}
.detail_main {
  width: 100%;
}
.detail_top {
  position: relative;
  line-height: 0;
  height: 6.66667rem;
  overflow: hidden;
}
.swipe_img {
  width: 100%;
}
.detail_con {
  background: #fff;
  margin: 0.266667rem 0.4rem 0;
  border-radius: 0.213333rem;
}
.center_div {
  text-align: center;
  padding-bottom: 0.533333rem;
}
.icon_div {
  height: 0.853333rem;
  color: #999;
  text-align: left;
  white-space: nowrap;
  width: 100%;
  overflow-x: scroll;
  overflow-y: hidden;
  margin-left: -0.053333rem;
}
.icon_div span {
  display: inline-block;
  font-size: 0.32rem;
  color: #750124;
  margin-right: 0.23333rem;
  vertical-align: text-top;
}
.icon_div span img {
  width: 0.32rem;
  position: relative;
}
.detail_title {
  font-weight: normal;
  margin: 0;
  font-size: 0.486667rem;
  color: #333;
  text-align: left;
  line-height: 0.65rem;
}
.price_all {
  text-align: left;
  color: #000;
  margin-top: 0.23333rem;
  margin-left: -0.1rem;
}
.price_all_count {
  font-size: 0.26666rem;
  color: #757575;
}
/* 活动 */
.detail_active {
  width: 100%;
  padding-top: 0.26666rem;
  height: 0.53333rem;
}
.detail_active p {
  font-size: 0.25333rem;
}
.detail_active p::after {
  content: "";
  display: block;
  clear: both;
}
.detail_active p span {
  float: left;
  color: #666;
}
.detail_active p span.spec_act {
  padding: 0 3px;
  height: 16px;
  margin-left: 0.2333rem;
  background-color: #f16b80;
  border-radius: 2px;
  color: #fff;
}
.detail_active p .active_icon {
  float: right;
  width: 0.533333rem;
  vertical-align: middle;
  margin-top: 0.123333rem;
}
/* 信息 */
.detail_info {
  width: 100%;
  background: #dfdfdf;
  border-radius: 0.08rem;
  margin: 0.53333rem 0;
}
.info_threeicon {
  background: #f5f5f5;
  height: 2.4rem;
  display: flex;
  font-weight: bold;
  color: #222;
}
.info_threeicon > div {
  flex: 1 0 auto;
  position: relative;
  padding-top: 0.4rem;
}
.info_threeicon img {
  width: 1.066667rem;
}
.info_threeicon p {
  margin-top: -5px;
  font-size: 0.373333rem;
}
.info_arrow {
  width: 0;
  border-width: 0 0.2rem 0.2rem;
  border-color: transparent transparent #dfdfdf;
  border-style: solid;
  position: absolute;
  left: 42%;
  bottom: -1px;
}
.info_explain {
  padding: 0.4rem 0;
  border-top: 0.5px solid #ccc;
}
/* .info_explain::before{
  content: "";
  display: table;
} */
.info_explain p {
  font-size: 13px;
  color: #666;
}
.info_owner {
  background: #fff;
  background: #eee;
  padding: 0.8rem;
  /* margin-top: 10px; */
}
.owner_img {
  width: 1.6rem;
  border-radius: 50%;
}
.detail .room_name {
  font-size: 0.48rem;
  font-weight: 700;
  padding: 0.266667rem 0 0.08rem;
  color: #333;
}
/* Part2 */
.info_colunm {
  overflow: hidden;
  border-top: 0.026667rem solid #eee;
  padding: 0.4rem 0 0.2rem;
}
.detail .p_left {
  line-height: 0.613333rem;
  margin-bottom: 0.166667rem;
  position: relative;
  display: flex;
  justify-content: space-between;
}
.info_title {
  display: inline-block;
  color: #666;
  font-weight: 700;
  font-size: 0.436667rem;
  margin-bottom: 0.266667rem;
  margin-top: 0.266667rem;
}
.more_span {
  color: #e64966;
  font-size: 12px;
  margin-top: 0.266667rem;
}
.info_descri_short {
  display: -webkit-box;
  text-overflow: ellipsis;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 5;
  overflow: hidden;
  font-size: 0.373333px;
  line-height: 0.666667rem;
  text-align: left;
}
.info_descri {
  font-size: 0.373333px;
  text-align: left;
  line-height: 0.666667rem;
}
.more_span i {
  background: url("http://127.0.0.1:5050/images/detail/det_more.png") no-repeat;
  background-size: 100%;
  display: inline-block;
  width: 0.4rem;
  height: 0.4rem;
  vertical-align: text-bottom;
}
.show_comment {
  height: 1.333333rem;
  border-radius: 0.106667rem;
  background: #ffedcb;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  margin-bottom: 0.5rem;
}
.stars span {
  margin-right: 0.053333rem;
}
.stars span img {
  width: 0.73333rem;
}
.core_arrow {
  width: 0;
  border-width: 0.2rem;
  border-color: transparent #ffd16f transparent transparent;
  border-style: solid;
  position: absolute;
  top: 11%;
  left: -43%;
}
.rate_core {
  display: inline-block;
  width: 0.83333rem;
  height: 0.53333rem;
  border-radius: 0.06rem;
  background: #ffd16f;
  color: #fff;
  font-size: 0.346667rem;
  text-align: center;
  line-height: 0.53333rem;
  position: relative;
  margin-left: 0.3rem;
}
.comment_con {
  margin-bottom: 0.43333rem;
}
.detail .tenant_name {
  color: #000;
}
.detail .tenant_time {
  font-size: 12px;
}
.detail .tenant_comment {
  color: #333;
  margin-top: 0.23333em;
  display: -webkit-box;
  text-overflow: ellipsis;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}
.detail .comm_imgs {
  margin-top: 0.2rem;
}
.comm_imgs img {
  width: 1.5rem;
  margin-right: 0.15rem;
}
.comm_imgs span {
  display: inline-block;
  width: 1.5rem;
  height: 1.5rem;
  background: #eee;
  vertical-align: top;
  text-align: center;
  line-height: 1.5rem;
}
.mint-button--default {
  color: #000 !important;
  font-size: 14px;
}
.info_colunm .mint-button--default{
  color: #000 !important;
}

.banner_img {
  width: 100%;
}
/* Part4 地图 */
#allmap {
  height: 5.5rem;
  width: 100%;
}
.map_p {
  color: #333;
  padding-top: 0.4rem;
}
.map_p i {
  display: inline-block;
  width: 0.426667rem;
  height: 0.426667rem;
  margin-right: 0.05333rem;
  background: url("http://127.0.0.1:5050/images/detail/det_marker_sm.png") no-repeat;
  background-size: 100%;
  position: relative;
  top: 0.0366667rem;
}

/* Part7 */
.facilitie_ul {
  width: 100%;
  margin: 0;
  margin-top: 0.4rem;
  list-style-type: none;
  padding: 0;
}
.facilitie_ul::after {
  content: "";
  display: block;
  clear: both;
}
.facilitie_ul li {
  float: left;
  width: 25%;
  height: 2.08rem;
  box-sizing: border-box;
  font-size: 0.32rem;
  color: #000;
  position: relative;
  text-align: center;
}
.facilitie_icon {
  font-size: 0.64rem;
}
.facilitie_hide {
  color: #ccc;
}
.facilitie_ul li p {
  margin: 0.053333rem auto 0;
  text-align: center;
  position: absolute;
  width: 100%;
  top: 0.8rem;
}
/* part10 */
.detail .unsubscribe_rule {
  margin-left: 0.266667rem;
}
.detail .rule_title {
  font-size: 0.373333rem;
  line-height: 0.533333rem;
  color: #333;
}
.detail .rule_title span {
  line-height: 0.613333rem;
  vertical-align: top;
  font-weight: 700;
}
.detail .no_icon {
  margin-left: 0.853333rem;
}
.detail .rule_title i {
  display: inline-block;
  width: 0.546667rem;
  height: 0.586667rem;
  background: url("http://127.0.0.1:5050/images/detail/det_reservation.png") no-repeat;
  background-size: 100%;
  margin-right: 0.323333rem;
  line-height: 0.586667rem;
}
.detail .rule_detail {
  margin-left: 0.853333rem;
  margin-bottom: 0.266667rem;
}
.cashfree {
  color: #2baca1;
}
.more_rule {
  color: #f16b80;
}
/* Part8 退订 */
.iconP {
  position: relative;
  padding-left: 0.4rem;
}
.iconP1 {
  border-left: 0.266vw solid #212121;
  padding-bottom: 0.8rem;
}
.ruleicon {
  background: #fff;
  display: inline-block;
  width: 0.533333rem;
  height: 0.533333rem;
  border-radius: 50%;
  text-align: center;
  box-sizing: border-box;
  position: absolute;
  left: -0.266667rem;
  top: -0.05333rem;
  border: 0.08rem solid transparent;
  border-bottom: 0.53333rem solid transparent;
}
.ruleicon img {
  width: 100%;
}

/* 底部 */
.order_btn {
  position: fixed;
  width: 100%;
  height: 1.33333rem;
  background: #f16b80;
  color: #fff;
  bottom: 0;
  z-index: 100;
  box-shadow: 0 -0.05333rem 0.213333rem rgb(240, 199, 205);
  display: flex;
  align-items: center;
  justify-content: space-around;
}
.order_btn_chat {
  background: #e64966;
  width: 1.013333rem;
  height: 1.013333rem;
  border-radius: 4px;
  font-size: 12px;
  text-align: center;
  position: relative;
}
.order_btn_chat i {
  display: block;
  width: 0.6rem;
  height: 0.6rem;
  background: url("http://127.0.0.1:5050/images/detail/det_message.png") no-repeat;
  background-size: 100%;
  position: absolute;
  left: 0.2rem;
}
.order_btn_chat p {
  font-size: 12px;
  position: absolute;
  bottom: 0;
  left: 0.2rem;
}
.order_btn_submit {
  font-size: 0.4266667rem;
  position: relative;
}
.order_btn_submit span {
  padding-left: 1rem;
}
.order_btn_submit i {
  background: url("http://127.0.0.1:5050/images/detail/det_more1.png") no-repeat;
  background-size: 100%;
  display: inline-block;
  width: 0.6rem;
  height: 0.6rem;
  vertical-align: text-bottom;
  position: absolute;
  top: -0.05rem;
}

#calendar {
  width: 100%;
  text-align: center;
  height: 8.56667rem;
}
.p1r {
  padding: 1rem;
}
</style>
<style>
/* 此样式用于去除左下角百度logo */
.anchorBL {
  display: none;
}
.BMap_cpyCtrl {
  display: none;
}
</style>