<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 老师 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>老师</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border-radius: 30px;
						padding: 0 20px 0 10px;
						margin: 0;
						color: #666;
						background: #f6f6f6;
						width: 120px;
						font-size: 16px;
						border-color: #ddd;
						border-width: 0 0 1px;
						line-height: 40px;
						border-style: solid;
						height: 40px;
					}
		
		/* lists */
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
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">老师展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"padding":"10px 7%","margin":"0px auto","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>

					
				<form class="layui-form filter" :style='{"padding":"0px","margin":"30px auto 10px","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px","fontSize":"16px","color":"#333"}'>老师账号</div>
						<input type="text" :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"0 0 1px","background":"#f6f6f6","width":"140px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' name="laoshizhanghao" id="laoshizhanghao" placeholder="老师账号" autocomplete="off" class="layui-input">
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #7e5ffb","margin":"0 8px 0 4px","borderColor":"#eae7e7","color":"#333","outline":"none","borderRadius":"30px","background":"#eae7e7","borderWidth":"0px","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"16px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #f2e013","margin":"0 4px 0 0","borderColor":"#ffaf03","color":"#333","outline":"none","borderRadius":"30px","background":"#f9f8eb","borderWidth":"0px","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-if="isAuth('laoshi','新增')" @click="jump('../laoshi/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"16px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"width":"100%","margin":"0px auto","minWidth":"1050px","background":"none","flex":"1","order":"3"}' class="lists">
					<!-- 样式一 -->
					<div :style='{"padding":"20px 0 0","margin":"0","overflow":"hidden","flexWrap":"wrap","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-1">
						<div :style='{"border":"0px solid #eae6e6","padding":"10px","margin":"0px 0 20px 1.8%","borderRadius":"10px","flexWrap":"wrap","background":"rgba(245,245,245,.0)","display":"flex","width":"31.5%","position":"relative","float":"left","justifyContent":"space-between","height":"auto"}' @click="jump('../laoshi/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","border":"1px solid #eee","padding":"0px","boxShadow":"0px 0px 0px 0px #999","objectFit":"contain","borderRadius":"0","display":"block","width":"100%","height":"375px"}' :src="item.touxiang?baseurl+item.touxiang.split(',')[0]:''">
							<div v-if="item.price" :style='{"padding":"4px 10px","color":"#c00","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"16px","order":"2"}' class="price">￥{{Number(item.price).toFixed(2)}}</div>
							<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"4px 10px","color":"#c00","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"16px","order":"2"}' class="price">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
							<div v-if="item.jf" :style='{"padding":"4px 10px","color":"#c00","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"16px","order":"2"}' class="price">{{Number(item.jf).toFixed(0)}}积分</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","borderColor":"#eae7e7","whiteSpace":"nowrap","color":"#333","textAlign":"center","display":"inline-block","overflow":"hidden","background":"#fff","borderWidth":"0 0 1px","width":"100%","lineHeight":"30px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.laoshizhanghao}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","borderColor":"#eae7e7","whiteSpace":"nowrap","color":"#333","textAlign":"center","display":"inline-block","overflow":"hidden","background":"#fff","borderWidth":"0 0 1px","width":"100%","lineHeight":"30px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.laoshixingming}}</div>
						</div>
					</div>
					
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],

				        xingbieOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
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
						vue.swiperList = swiperList;
						
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
			        vue.xingbieOptions = '男,女'.split(',')
					vue.$nextTick(() => {form.render()})



				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList() {
					var param = {
						page: 1,
						limit: limit
					}

			        if (jquery('#laoshizhanghao').val()) {
			          param['laoshizhanghao'] = jquery('#laoshizhanghao').val() ? '%' + jquery('#laoshizhanghao').val() + '%' : '';
			        }



					// 获取列表数据
					http.request('laoshi/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('laoshi/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
