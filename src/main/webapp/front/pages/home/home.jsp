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
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						padding: 30px 20px;
						left: 10px;
						background: none;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: #2cb34a;
					}
		
		.recommends .list-3 .swiper-button-next {
						padding: 30px 20px;
						left: auto;
						background: none;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: #2cb34a;
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 1;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 1;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"padding":"0px 0 0","margin":"0px auto","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","justifyContent":"space-between"}'>
			
				


            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"padding":"0px","margin":"60px 7% 0px 0","borderColor":"#eee","textAlign":"center","display":"block","flexWrap":"wrap","background":"none","borderWidth":"0px","flex":"1","width":"49%","position":"relative","borderStyle":"solid","order":"8"}'>
					<div v-if="false && 3 == 1" class="news-idea" :style='{"padding":"0px","margin":"0 auto","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230217/1f25c2bc566b49c4959565f1941d60ee.jpg) no-repeat center top","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0 0 40px","margin":"0px auto 40px","borderColor":"#fff","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230420/1afde69679ad4221a38f678481ceb7d9.png) no-repeat center bottom","flexDirection":"inherit","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"dashed","height":"40px"}'>
						<span :style='{"padding":"0 10px","color":"#999","textAlign":"left","background":"none","display":"none","width":"50%","fontSize":"16px","lineHeight":"50px","order":"2"}'>HOME NEWS</span>
						<span :style='{"padding":"0 0px 0 0px","margin":"0 0px 0 0","color":"#155e63","textAlign":"center","background":"none","display":"inline-block","width":"100%","fontSize":"30px","lineHeight":"50px","fontWeight":"600"}'>通知公告</span>
					</div>
					
					<div v-if="false && 3 == 2" class="news-idea" :style='{"padding":"0px","margin":"0 auto","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230217/1f25c2bc566b49c4959565f1941d60ee.jpg) no-repeat center top","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"width":"100%","padding":"0px 0px 0","flexWrap":"wrap","background":"#fff","display":"flex","height":"auto"}' v-if="newsList.length" class="list list-9">
						<div v-for="(item,index) in newsList" v-if="index<6" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"border":"1px solid #f0f0f0","cursor":"pointer","padding":"10px 20px","margin":"0 0px 20px 0","background":"#f9f9f9","width":"100%","position":"relative","height":"auto"}' class="new9-list-item animation-box">
							<div :style='{"padding":"0px 10px","borderColor":"#76b39d","whiteSpace":"nowrap","color":"#333","textAlign":"left","overflow":"hidden","background":"none","borderWidth":"0 0 0 4px","fontSize":"16px","lineHeight":"16px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"600"}' class="new9-list-item-title">{{ item.title }}</div>
							<div :style='{"padding":"4px 0","overflow":"hidden","color":"#666","textAlign":"left","fontSize":"14px","lineHeight":"24px","textIndent":"0em","height":"72px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
							<div :style='{"fontSize":"14px","lineHeight":"24px","position":"absolute","right":"30px","color":"#999","top":"4px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
							<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
						</div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0px auto","borderColor":"#ccc","borderRadius":"30px","textAlign":"center","background":"#f6f6f6","borderWidth":"0px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#333","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"16px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 3 == 3" class="recommend-idea" :style='{"padding":"0px","margin":"0 auto","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230217/1f25c2bc566b49c4959565f1941d60ee.jpg) no-repeat center top","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"40px 7% 60px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0 auto","borderColor":"#eee","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230420/1486c84104094cf68a66d64a6ce2d509.jpg) no-repeat center top / 100% 100%","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"2"}'>
					<div :style='{"padding":"0 0 10px","margin":"0 auto 0px","borderColor":"#fff","color":"#76b39d","textAlign":"center","float":"left","background":"url(http://codegen.caihongy.cn/20230420/fe23b6b20b0d4b01bbadb5efc5a14fde.png) no-repeat center bottom","borderWidth":"0 0 0px","width":"100%","lineHeight":"50px","fontSize":"30px","borderStyle":"dashed","fontWeight":"600"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0 auto 0px","borderColor":"#DF8A83","color":"#666","textAlign":"left","display":"none","float":"right","borderWidth":"0 0 0px","background":"url(http://codegen.caihongy.cn/20230117/c7da2d80c94441d584aa6c41d0f7d72a.png) no-repeat 50% center","width":"50%","lineHeight":"50px","fontSize":"16px","borderStyle":"double","textTransform":"uppercase"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"padding":"0px","margin":"40px 0 0","borderRadius":"10px","flexWrap":"wrap","background":"none","display":"flex","width":"48%","float":"left","justifyContent":"space-between","height":"auto"}'>
						<img :style='{"padding":"0px","boxShadow":"0px 26px 26px -30px #333","margin":"0 0 30px","borderColor":"#eee","objectFit":"cover","borderRadius":"10px","borderWidth":"0px","background":"#ddf0e1","display":"block","width":"32%","borderStyle":"solid","height":"200px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"border":"0px dashed #ccc","padding":"0px","boxShadow":"0px 26px 26px -30px #333","margin":"110px 0 0","objectFit":"cover","borderRadius":"10px","background":"#ddf0e1","display":"block","width":"32%","height":"200px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"padding":"0px","margin":"230px 0 0","objectFit":"cover","borderRadius":"10px","background":"#ddf0e1","display":"block","width":"32%","height":"200px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"20px","margin":"40px 0px 0px 0","borderColor":"#76b39d","color":"#FFF","textIndent":"2em","float":"right","overflow":"hidden","borderRadius":"8px","background":"rgba(118,179,157,.2)","borderWidth":"1px","width":"48%","lineHeight":"30px","fontSize":"16px","borderStyle":"solid","height":"320px"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"70px","left":"calc(0px)","background":"url(http://codegen.caihongy.cn/20230106/5d0a7d8d50bf45ee9001a5dc0520739f.png) no-repeat center center / 100% 100%","display":"none","width":"48%","position":"absolute","height":"250px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

			<!-- 图文列表 -->


			
				<!-- 系统简介 -->
				<div :style='{"padding":"10px 40px 0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"30px 40px 0 7%","borderColor":"#eee","alignItems":"flex-start","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"37%","position":"relative","borderStyle":"solid","height":"auto","order":"5"}'>
					<div :style='{"padding":"0 0 20px","margin":"0px auto 0px","borderColor":"#fff","color":"#155e63","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230420/fe23b6b20b0d4b01bbadb5efc5a14fde.png) no-repeat center bottom","borderWidth":"0 0 1px","width":"100%","fontSize":"30px","borderStyle":"dashed","fontWeight":"600","height":"60px","order":"2"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0px","color":"#666","textAlign":"left","background":"none","display":"none","width":"50%","lineHeight":"50px","fontSize":"16px","float":"left"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"padding":"10px","margin":"30px 0 20px","flexWrap":"wrap","background":"#76b39d","display":"flex","width":"calc(100% - 0px)","float":"left","justifyContent":"space-between","height":"auto","order":"1"}'>
						<img :style='{"padding":"0px","margin":"0px 0","borderColor":"#ddd","objectFit":"cover","borderRadius":"0","borderWidth":"0px","background":"#ddf0e1","display":"block","width":"100%","borderStyle":"solid","height":"270px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"20px 0","borderColor":"#ddd","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"rgba(255,255,255,.9)","display":"none","width":"100%","borderStyle":"solid","height":"300px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"1px solid #ddd","padding":"20px","margin":"0px 0","objectFit":"cover","background":"rgba(255,255,255,.9)","display":"none","width":"49%","height":"300px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"12px 20px","margin":"20px 0 0","borderColor":"#eee","color":"#666","textAlign":"left","textIndent":"2em","overflow":"hidden","borderRadius":"0","background":"#f6f6f6","borderWidth":"1px","width":"100%","lineHeight":"30px","fontSize":"16px","borderStyle":"solid","height":"240px","order":"2"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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







                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 9;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                


				


				
			});
		</script>
	</body>
</html>
