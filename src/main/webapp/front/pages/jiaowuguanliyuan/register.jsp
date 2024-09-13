<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#registerForm .form-item .layui-form-select .layui-input {
						border-radius: 0px;
						padding: 0 10px;
						outline: none;
						color: #666;
						background: #fdfdf6;
						width: 100%;
						font-size: 14px;
						border-color: #efedd6;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="register" class="register" :style='{"minHeight":"100vh","padding":"10px 0","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230421/09c4dc2482544bbe8e5bc07107662968.jpg) no-repeat center bottom / 100% 100%,#fff","display":"flex","width":"100%","justifyContent":"center"}'>
			<form id="registerForm" class="layui-form login-form" :style='{"padding":"20px 0px 140px","boxShadow":"0px 26px 26px -26px #333","margin":"10px auto","borderColor":"#eee","display":"flex","justifyContent":"flex-start","minHeight":"550px","outline":"0px solid #eee","borderRadius":"4px","outlineOffset":"0px","flexWrap":"wrap","background":"url(),#fff","borderWidth":"0px","width":"720px","position":"relative","borderStyle":"solid","height":"auto"}' lay-filter="myForm">
				<div v-if="true" :style='{"margin":"0 0 4px","color":"#5fa6d0","textAlign":"center","display":"none","width":"100%","fontSize":"22px","lineHeight":"44px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / REGISTER</div>
				<div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 auto 30px","borderColor":"#e6f5ef","color":"#155e63","textAlign":"center","borderRadius":"0","background":"none","borderWidth":"1px 1px 4px","width":"80%","lineHeight":"50px","fontSize":"24px","borderStyle":"solid","fontWeight":"600","height":"50px"}'>教务管理员注册</p></div>
			

				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"color":"#459075","left":"-154px","textAlign":"right","width":"150px","lineHeight":"44px","fontSize":"18px","position":"absolute"}'>账号：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#efedd6","color":"#666","borderRadius":"0px","borderWidth":"1px","background":"#fdfdf6","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="zhanghao" name="zhanghao" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"color":"#459075","left":"-154px","textAlign":"right","width":"150px","lineHeight":"44px","fontSize":"18px","position":"absolute"}'>姓名：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#efedd6","color":"#666","borderRadius":"0px","borderWidth":"1px","background":"#fdfdf6","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"color":"#459075","left":"-154px","textAlign":"right","width":"150px","lineHeight":"44px","fontSize":"18px","position":"absolute"}'>密码：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#efedd6","color":"#666","borderRadius":"0px","borderWidth":"1px","background":"#fdfdf6","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
                    <div v-if="true" :style='{"color":"#459075","left":"-154px","textAlign":"right","width":"150px","lineHeight":"44px","fontSize":"18px","position":"absolute"}'>确认密码：</div>
                    <input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#efedd6","color":"#666","borderRadius":"0px","borderWidth":"1px","background":"#fdfdf6","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima2" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                </div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"color":"#459075","left":"-154px","textAlign":"right","width":"150px","lineHeight":"44px","fontSize":"18px","position":"absolute"}'>电话：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#efedd6","color":"#666","borderRadius":"0px","borderWidth":"1px","background":"#fdfdf6","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="dianhua" name="dianhua" placeholder="请输入电话" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"40px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>头像：</div>
                    <div :style='{"alignItems":"center","display":"flex"}'>
						<img id="touxiangImg" :style='{"minHeight":"60px","width":"80px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"4px","height":"auto"}' src="../../img/avator.png">
						<input type="hidden" id="touxiang" name="touxiang" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#efedd6","color":"#333","minWidth":"110px","outline":"none","borderRadius":"0px","background":"#fdfdf6","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
							<i :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#333","display":"inline-block"}' class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
                </div>

				<button :style='{"cursor":"pointer","padding":"2px 30px 0px","margin":"0px auto","borderColor":"#76b39d","color":"#76b39d","bottom":"40px","display":"block","outline":"none","borderRadius":"0","left":"43%","background":"#fff","borderWidth":"1px 1px 4px","width":"auto","fontSize":"16px","position":"absolute","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
				<button :style='{"cursor":"pointer","padding":"0 0px","margin":"0px 0 0px","borderColor":"#98c6e2","color":"#666","bottom":"60px","display":"block","right":"30px","outline":"none","borderRadius":"20%","background":"none","borderWidth":"0px","width":"120px","fontSize":"16px","position":"absolute","borderStyle":"solid","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				<a :style='{"cursor":"pointer","padding":"0 0px","borderColor":"#98c6e2","color":"#666","textAlign":"center","bottom":"30px","display":"inline-block","textDecoration":"none","right":"50px","borderRadius":"20%","background":"none","borderWidth":"0px","width":"130px","fontSize":"16px","lineHeight":"40px","position":"absolute","borderStyle":"solid","height":"40px"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
        <script src="../../js/xm-select.js"></script>
				<script>
			var vue = new Vue({
			  el: '#register',
              data: {
              },
              updated: function() {
                  layui.form.render(null, 'myForm');
              },
			  methods: {
				
			  }
			});
			
            layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
                var layer = layui.layer;
                var element = layui.element;
                var carousel = layui.carousel;
                var http = layui.http;
                var jquery = layui.jquery;
                var form = layui.form;
                var upload = layui.upload;
                var laydate = layui.laydate;
				var tablename = http.getParam('tablename');


                // 上传图片
                var touxiangUpload = upload.render({
                    //绑定元素
                    elem: '#touxiangUpload',
                    //上传接口
                    url: http.baseurl + 'file/upload',
                    // 请求头
                    headers: {
                        Token: localStorage.getItem('Token')
                    },
                    // 允许上传时校验的文件类型
                    accept: 'images',
                    before: function() {
                        //loading层
                        var index = layer.load(1, {
                            shade: [0.1, '#fff'] //0.1透明度的白色背景
                        });
                    },
                    // 上传成功
                    done: function(res) {
                        console.log(res);
                        layer.closeAll();
                        if (res.code == 0) {
                            layer.msg("上传成功", {
                                time: 2000,
                                icon: 6
                            })
                            var url = 'upload/' + res.file;
                            jquery('#touxiang').val(url);
                            jquery('#touxiangImg').attr('src', http.baseurl+url)
                        } else {
                            layer.msg(res.msg, {
                                time: 2000,
                                icon: 5
                            })
                        }
                    },
                    //请求异常回调
                    error: function() {
                        layer.closeAll();
                        layer.msg("请求接口异常", {
                            time: 2000,
                            icon: 5
                        })
                    }
                });
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    if(!isMobile(data.dianhua)){
                        layer.msg('电话应输入手机格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

                    if(data.mima!=data.mima2) {
                        layer.msg('两次密码输入不一致', {
                                time: 2000,
                                icon: 5
                        });
                        return false
                    }

                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
