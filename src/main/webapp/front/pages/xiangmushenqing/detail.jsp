<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #FF7373;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #FF7373;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 30px 0 0;
						color: #333;
						font-weight: 500;
						font-size: 22px;
						border-color: #f9f8eb;
						line-height: 36px;
						border-radius: 0px;
						background: none;
						width: auto;
						border-width: 1px;
						border-style: solid;
						text-align: center;
						height: 36px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 30px 0 0;
						color: #76b39d;
						font-weight: 500;
						font-size: 22px;
						border-color: #76b39d;
						line-height: 36px;
						background: none;
						width: auto;
						border-width: 1px;
						border-style: solid;
						text-align: center;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 30px 0 0;
						color: #76b39d;
						font-weight: 500;
						font-size: 22px;
						border-color: #76b39d;
						line-height: 36px;
						border-radius: 0px;
						background: none;
						width: auto;
						border-width: 1px;
						border-style: solid;
						text-align: center;
						height: 36px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"padding":"30px 7%","margin":"0px auto","alignItems":"flex-start","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>
				<div :style='{"padding":"0px","boxShadow":"0px 0px 0px #eee","borderColor":"#e6e6e6","margin":"0","display":"flex","justifyContent":"space-between","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"url()","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"0px solid #f1f7fc","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0","margin":"10px 0% 0 0px","borderRadius":"0","background":"none","width":"100%","order":"1","height":"560px"}'>
						<div carousel-item>
							<div :style='{"borderRadius":"0","width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"border":"1px solid #eee","margin":"0 auto","objectFit":"contain","borderRadius":"0px","background":"#fff","width":"100%","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>




					<div :style='{"minHeight":"650px","padding":"10px 40px","margin":"0px 0 0 0","borderColor":"#eee","background":"none","borderWidth":"0px","flex":"1","width":"50%","borderStyle":"solid","order":"2"}'>
						<div :style='{"padding":"0 10px 0 10px","margin":"0 0 10px","borderColor":"#e8e6cf","alignItems":"center","display":"inline-block","justifyContent":"space-between","borderRadius":"0px","background":"#f9f8eb","borderWidth":"1px","width":"100%","lineHeight":"50px","borderStyle":"solid","height":"50px"}'>
							<div :style='{"padding":"0 0 0 40px","color":"#155e63","background":"none","display":"inline-block","width":"50%","fontSize":"24px","float":"left","fontWeight":"600"}'>{{title}}</div>
						</div>



						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>项目分类：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.xiangmufenlei}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>级别：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.jibie}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>项目经费：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.xiangmujingfei}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>老师账号：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.laoshizhanghao}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>老师姓名：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.laoshixingming}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>成员名单：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.chengyuanmingdan}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 auto 1px","borderColor":"#eee","background":"none","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#42896f","textAlign":"right","background":"none","width":"auto","fontSize":"20px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>研究目的：</div>
							<div  :style='{"width":"100%","padding":"2px 10px 0","fontSize":"16px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.yanjiumude}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 7%","flexWrap":"wrap","background":"none","display":"flex"}'>


							<button :style='{"border":"0px solid #b8d7f2","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#333","borderRadius":"30px","background":"#f9f8eb","width":"auto","lineHeight":"36px","fontSize":"14px","height":"36px"}' v-if="isAuth('xiangmushenqing','项目流程')" @click="onAcrossTap('xiangmuliucheng','','')" type="button" class="layui-btn">
								项目流程
							</button>

						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"padding":"0","boxShadow":"none","margin":"60px 0 0","borderColor":"#e6e6e6","minHeight":"360px","borderRadius":"0px","background":"#fff","borderWidth":"0px","flex":"1","width":"60%","fontSize":"16px","borderStyle":"solid","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"12px 10px 0","borderColor":"#ddd","textAlign":"center","background":"#f9f8eb","borderWidth":"0 0 0px","fontSize":"0","borderStyle":"solid","height":"60px"}'>

						<li class="layui-this">研究内容</li>










					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">

						<div class="layui-tab-item layui-show">
							<div v-html="detail.yanjiuneirong"></div>
						</div>











					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'xiangmushenqing',
					baseurl: '',
					// 评论列表
					dataList: [],
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`xiangmushenqing`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},




					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList2 = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '480px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '6000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.xiangmumingcheng;
					// 轮播图片
					vue.swiperList = vue.detail.fengmian ? vue.detail.fengmian.split(",") : [];
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '50%',
							height: '560px',
							anim: 'default',
							autoplay: 'true',
							interval: '5000',
							arrow: 'hover',
							indicator: 'inside'
						});
					})


				});





			});
		</script>
	</body>
</html>