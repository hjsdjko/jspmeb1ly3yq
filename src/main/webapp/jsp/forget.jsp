<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- Fav and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
	</head>

<style>
	.error{
		color:red;
	}
	
	html, body {
		width: 100%;
		height: 100%;
	}
	
	.content {
				background-repeat: no-repeat;
				background-size: 100% 100%;
				background: url(http://codegen.caihongy.cn/20230401/d71f03ed3d084e9e8ef63cd2c0c13477.jpg);
				display: flex;
				width: 100%;
				min-height: 100vh;
				justify-content: center;
				align-items: center;
				background-position: center center;
			}
	
	#registerForm {
				border-radius: 0 0 60px 60px;
				padding: 0px 0px 20px;
				box-shadow: 0px 26px 26px -30px #999;
				margin: 0;
				background: rgba(255,255,255,.95);
				width: 650px;
				border-color: #fff;
				border-width: 4px;
				border-style: solid;
				height: auto;
			}
	
	#registerForm .title {
				padding: 10px 0;
				margin: 0 0 20px 0;
				text-shadow: 0px 0px 0px rgba(64, 158, 255, .5);
				color: #333;
				background: #cccc99;
				width: 100%;
				font-size: 22px;
				line-height: 40px;
				text-align: center;
			}
	
	#registerForm .list-item {
				padding: 0;
				margin: 0 auto 15px;
				width: 60%;
				position: relative;
				height: auto;
			}
	
	#registerForm .list-item .item-label {
				padding: 0 5px 0 0;
				color: #333;
				left: -100px;
				width: 100px;
				font-size: 14px;
				line-height: 44px;
				position: absolute;
				text-align: right;
			}
	
	#registerForm .list-item>input {
				border-radius: 20px;
				padding: 0 10px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				color: #333;
				background: #fff;
				width: 100%;
				font-size: 14px;
				border-color: #ececde;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#registerForm .list-item>select {
				padding: 0 10px;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				line-height: 40px;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 100%;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#registerForm .list-item .date {
				padding: 0 10px;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				line-height: 40px;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 100%;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#registerForm .list-item-img {
				padding: 0;
				margin: 0 auto 15px;
				width: 60%;
				height: auto;
			}
	
	#registerForm .list-item-img .item-label {
				padding: 0 10px 0 0;
				color: #666;
				font-weight: 500;
				width: 84px;
				font-size: 14px;
				line-height: 40px;
				text-align: right;
			}
	
	#registerForm .list-item-img img {
				border-radius: 20px;
				margin: 0 10px 0 0;
				object-fit: cover;
				display: inline-block;
				width: 160px;
				min-height: 80px;
				height: auto;
			}
	
	#registerForm .list-item-img .btn-img {
				cursor: pointer;
				border: 1px solid #ececde;
				padding: 0 12px;
				color: #333;
				display: inline-block;
				font-size: 14px;
				line-height: 40px;
				border-radius: 20px;
				background: #fff;
				width: auto;
				position: relative;
				text-align: center;
				height: 40px;
			}
	
	#registerForm .list-item-img .btn-img input {
		position: absolute;
		opacity: 0;
		width: 100%;
		height: 100%;
		left: 0;
		top: 0;
	}
	
	#registerForm .list-item.emails .item-body input {
				padding: 0 12px;
				margin: 0 20px 0 0;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: calc(100% - 100px);
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#registerForm .list-item.emails .item-body button {
				border: 1px solid #ececde;
				cursor: pointer;
				border-radius: 20px;
				padding: 0;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				margin: 0;
				outline: none;
				color: #333;
				background: #f5f5f5;
				width: 90px;
				font-size: 14px;
				height: 40px;
			}

	#question {
				border-radius: 0 0 60px 60px;
				padding: 0px 0px 20px;
				box-shadow: 0px 26px 26px -30px #999;
				margin: 0;
				background: rgba(255,255,255,.95);
				width: 650px;
				border-color: #fff;
				border-width: 4px;
				border-style: solid;
				height: auto;
			}
	
	#question .title {
				padding: 10px 0;
				margin: 0 0 20px 0;
				text-shadow: 0px 0px 0px rgba(64, 158, 255, .5);
				color: #333;
				background: #cccc99;
				width: 100%;
				font-size: 22px;
				line-height: 40px;
				text-align: center;
			}
	
	#question .list-item {
				padding: 0;
				margin: 0 auto 15px;
				width: 60%;
				position: relative;
				height: auto;
			}
	
	#question .list-item .item-label {
				padding: 0 5px 0 0;
				color: #333;
				left: -100px;
				width: 100px;
				font-size: 14px;
				line-height: 44px;
				position: absolute;
				text-align: right;
			}
	
	#question .list-item>input {
				border-radius: 20px;
				padding: 0 10px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				color: #333;
				background: #fff;
				width: 100%;
				font-size: 14px;
				border-color: #ececde;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#question .list-item>select {
				padding: 0 10px;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				line-height: 40px;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 100%;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#question .list-item .date {
				padding: 0 10px;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				line-height: 40px;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 100%;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#question .list-item-img {
				padding: 0;
				margin: 0 auto 15px;
				width: 60%;
				height: auto;
			}
	
	#question .list-item-img .item-label {
				padding: 0 10px 0 0;
				color: #666;
				font-weight: 500;
				width: 84px;
				font-size: 14px;
				line-height: 40px;
				text-align: right;
			}
	
	#question .list-item-img img {
				border-radius: 20px;
				margin: 0 10px 0 0;
				object-fit: cover;
				display: inline-block;
				width: 160px;
				min-height: 80px;
				height: auto;
			}
	
	#question .list-item-img .btn-img {
				cursor: pointer;
				border: 1px solid #ececde;
				padding: 0 12px;
				color: #333;
				display: inline-block;
				font-size: 14px;
				line-height: 40px;
				border-radius: 20px;
				background: #fff;
				width: auto;
				position: relative;
				text-align: center;
				height: 40px;
			}
	
	#question .list-item-img .btn-img input {
		position: absolute;
		opacity: 0;
		width: 100%;
		height: 100%;
		left: 0;
		top: 0;
	}
	
	#question .list-item.emails .item-body input {
				padding: 0 12px;
				margin: 0 20px 0 0;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: calc(100% - 100px);
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#question .list-item.emails .item-body button {
				border: 1px solid #ececde;
				cursor: pointer;
				border-radius: 20px;
				padding: 0;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				margin: 0;
				outline: none;
				color: #333;
				background: #f5f5f5;
				width: 90px;
				font-size: 14px;
				height: 40px;
			}

	#update {
				border-radius: 0 0 60px 60px;
				padding: 0px 0px 20px;
				box-shadow: 0px 26px 26px -30px #999;
				margin: 0;
				background: rgba(255,255,255,.95);
				width: 650px;
				border-color: #fff;
				border-width: 4px;
				border-style: solid;
				height: auto;
			}
	
	#update .title {
				padding: 10px 0;
				margin: 0 0 20px 0;
				text-shadow: 0px 0px 0px rgba(64, 158, 255, .5);
				color: #333;
				background: #cccc99;
				width: 100%;
				font-size: 22px;
				line-height: 40px;
				text-align: center;
			}
	
	#update .list-item {
				padding: 0;
				margin: 0 auto 15px;
				width: 60%;
				position: relative;
				height: auto;
			}
	
	#update .list-item .item-label {
				padding: 0 5px 0 0;
				color: #333;
				left: -100px;
				width: 100px;
				font-size: 14px;
				line-height: 44px;
				position: absolute;
				text-align: right;
			}
	
	#update .list-item>input {
				border-radius: 20px;
				padding: 0 10px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				color: #333;
				background: #fff;
				width: 100%;
				font-size: 14px;
				border-color: #ececde;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#update .list-item>select {
				padding: 0 10px;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				line-height: 40px;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 100%;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#update .list-item .date {
				padding: 0 10px;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				line-height: 40px;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 100%;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#update .list-item-img {
				padding: 0;
				margin: 0 auto 15px;
				width: 60%;
				height: auto;
			}
	
	#update .list-item-img .item-label {
				padding: 0 10px 0 0;
				color: #666;
				font-weight: 500;
				width: 84px;
				font-size: 14px;
				line-height: 40px;
				text-align: right;
			}
	
	#update .list-item-img img {
				border-radius: 20px;
				margin: 0 10px 0 0;
				object-fit: cover;
				display: inline-block;
				width: 160px;
				min-height: 80px;
				height: auto;
			}
	
	#update .list-item-img .btn-img {
				cursor: pointer;
				border: 1px solid #ececde;
				padding: 0 12px;
				color: #333;
				display: inline-block;
				font-size: 14px;
				line-height: 40px;
				border-radius: 20px;
				background: #fff;
				width: auto;
				position: relative;
				text-align: center;
				height: 40px;
			}
	
	#update .list-item-img .btn-img input {
		position: absolute;
		opacity: 0;
		width: 100%;
		height: 100%;
		left: 0;
		top: 0;
	}
	
	#update .list-item.emails .item-body input {
				padding: 0 12px;
				margin: 0 20px 0 0;
				color: #333;
				font-size: 14px;
				border-color: #ececde;
				border-radius: 20px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: calc(100% - 100px);
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#update .list-item.emails .item-body button {
				border: 1px solid #ececde;
				cursor: pointer;
				border-radius: 20px;
				padding: 0;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				margin: 0;
				outline: none;
				color: #333;
				background: #f5f5f5;
				width: 90px;
				font-size: 14px;
				height: 40px;
			}
	
	#submitBtn {
				border: 0;
				cursor: pointer;
				padding: 0 10px;
				margin: 20px auto 5px;
				color: #333;
				display: block;
				font-size: 18px;
				border-radius: 30px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #cccc99;
				width: 150px;
				height: 40px;
			}
	
	#loginBtn {
				cursor: pointer;
				padding: 0;
				margin: 12px auto;
				color: #333;
				display: block;
				text-decoration: underline;
				width: 60%;
				font-size: 14px;
				line-height: 1;
				text-align: right;
			}
</style>

<body>

	<div class="content" id="app">
            <form id="registerForm" action="" method="post" v-if="tabIndex==1">
                <div class="title">忘记密码</div>
                <div class="list-item">
                    <input name="username" placeholder="请输入用户名" class="form-control-i">
                </div>
                <div class="list-item">
                    <select id="roleSelect" onchange="roleChange()" name="roles" class="form-control">
                    <option value="" disabled selected>请选择角色</option>
                    </select>
                </div>
                <button id="submitBtn" class="btn btn-primary" type="button" @click="getSecurity">获取密保</button>
                <a id="loginBtn" href="javascript:window.location.href='login.jsp'">已有账号，直接登录</a>
            </form>
            <form id="question" action="" method="post" v-if="tabIndex==2">
                <div class="title">用户密保</div>
                <div class="list-item">
                    <input v-model="forgetForm.pquestion" placeholder="密保问题" readonly class="form-control-i">
                </div>
                <div class="list-item">
                    <input name="panswer1" id="daan" placeholder="请输入密保答案" class="form-control-i">
                </div>
                <button id="submitBtn" class="btn btn-primary" type="button" @click="validateSecurity">校验</button>
            </form>
            <form id="update" action="" method="post" v-if="tabIndex==3">
                <div class="title">用户密保</div>
                <div class="list-item">
                    <input name="password" placeholder="请输入密码" class="form-control-i" type="password">
                </div>
                <div class="list-item">
                    <input name="repassword" placeholder="请输入确认密码" class="form-control-i" type="password">
                </div>
                <button id="submitBtn" class="btn btn-primary" type="button" @click="updatePassword">校验</button>
            </form>
	</div>

	<!--  END OF PAPER WRAP -->

	<!-- MAIN EFFECT -->
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript">
		
	<%@ include file="utils/menu.jsp"%>
	<%@ include file="static/utils.js"%>	
	<%@ include file="utils/baseUrl.jsp"%>

        var vm = new Vue({
            el: '#app',
            data:{
              tabIndex:1,
              tableName: '',
              forgetForm:{}
            },
            beforeCreate: function(){
              
            },
            created: function () {
            },
            methods: { 
                getSecurity(){
                    if(vm.tableName=='') {
                        alert('请选择角色');
                        return false;
                    }
                    let that = this;
                    let data ={}
                    let value = $('#registerForm').serializeArray();
                    $.each(value, function (index, item) {
                        data[item.name] = item.value;
                    });
                    var url = baseUrl + vm.tableName+ "/security";
                    $.ajax({
                        type: "GET",
                        url: url,
                        contentType: "application/json",
                        data:data,
                        beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                        success: function(res){    
                            if(res.code == 0){
                                if(res.data==null){
                                    alert('用户不存在')
                                    return false
                                }
                                vm.forgetForm = res.data
                                vm.tabIndex = 2
                            }else if(res.code == 401){
                                <%@ include file="static/toLogin.jsp"%>   
                            }else{
                                alert(res.msg)
                            }
                        },
                    }); 
                },
                validateSecurity(){
                    let data ={}
                    let value = $('#question').serializeArray();
                    $.each(value, function (index, item) {
                        data[item.name] = item.value;
                    });
                    if(data.panswer1!==vm.forgetForm.panswer){
                        alert('密保答案错误')
                        return false
                    }
                    alert('密保答案正确')
                    vm.tabIndex=3
                    
                },
                updatePassword(){
                    let data ={}
                    let value = $('#update').serializeArray();
                    $.each(value, function (index, item) {
                        data[item.name] = item.value;
                    });
                    if(data.password ==''){
                        alert('请输入密码')
                        return false
                    }
                    if(data.password !==data.repassword){
                        alert('两次密码输入不一致')
                        return false
                    }
                    vm.forgetForm.password = data.password
                    vm.forgetForm.mima = data.password
                    var url = baseUrl + vm.tableName +"/update";
                    let json = JSON.stringify(vm.forgetForm);
                    $.ajax({
                        type: "POST",
                        url: url,
                        contentType: "application/json",
                        data:json,
                        beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                        success: function(res){    
                            if(res.code == 0){
                                alert('修改成功')
                                window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
                            }else{
                                alert(res.msg)
                            }
                        },
                    }); 
                },
            }
        });     
        function roleChange(){
            var options = document.getElementById("roleSelect").options;
            var index = document.getElementById("roleSelect").selectedIndex;
            var colVal = options[index].value;
            vm.tableName = colVal;
        }


		function ready() {
		}
		document.addEventListener("DOMContentLoaded", ready);
	</script>

</body>

</html>
