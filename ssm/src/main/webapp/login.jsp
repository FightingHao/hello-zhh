<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/jQuery/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<style>
body {
	margin: 0;
	padding: 0;
	background-color: #F8F8F8;
}

#hezi {
	height: 150px;
	width: 100px
}

.denglu {
	margin: 0 auto;
	width: 400px;
	height: 400px;
	border-radius: 25px;
	background-color: rgba(56, 49, 49, 0.13);
    border: 2px ridge rgba(238, 238, 238, 0.13);
    border-radius: 5px;
    -moz-box-shadow: 0 -5px 10px 1px rgba(16, 16, 16, 0.57);
    -webkit-box-shadow: 0 -5px 10px 1px rgba(16, 16, 16, 0.57);
    box-shadow: 0 -5px 10px 1px rgba(16, 16, 16, 0.57);
    border-bottom: none;
}

.top {
	height: 50px;
/* 	background-color: #293d66; */
}

.nb {
	color: white;
	line-height: 100px;
	text-align: center;
}

#username_denglu, #code_denglu, #password_denglu{
    background: rgba(23, 24, 25, 0.29) no-repeat;
    border: 1px solid #7B7474;
    border-radius: 5px;
    font-family: Oswald-Light;
    color: #FFF;
    outline: none;
    letter-spacing: 2px;
}

.content {
	height: 350px;
/* 	background-color: #c2d3ff; */
	padding: 50px 0 50px 0;
}

.shang {
	width: 90%;
	margin: 0 auto;
}

.button {
	padding: 0 100px;
}

.float {
	position: relative;
	left: 200px;
	top: -34px;
}

.shulu {
	width: 200px;
}

.tupian {
	width: 160px;
	height: 34px;
	float: right;
}

#tijiao{
	float: right;
	position: relative;
	top: 31px;
	left: 7px;
}

.an{
	opacity: 0.4;
}

#img {
	background-image: url(static/img/2.jpg);
	background-size: contain;
	background-repeat: no-repeat;
	background-position: center center;
	/*background-attachment: fixed;*/
	background-size: cover;
	background-color: #464646;
	height: 800px;
	width: 100%;
}
</style>

<body>
	<div>
		<div class="container-fluid"></div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">&nbsp; <span
						class="glyphicon glyphicon-home" aria-hidden="true">&nbsp;</span>
				</a></li>
				<li><a href="shop.jsp">&nbsp; <span
						class="glyphicon glyphicon-book" aria-hidden="true">&nbsp;</span>
				</a></li>
				<li><a href="car.jsp">&nbsp; <span
						class="glyphicon glyphicon-shopping-cart" aria-hidden="true">&nbsp;</span>
				</a></li>
				<li><a href="login.jsp">&nbsp; <span
						class="glyphicon glyphicon-user" aria-hidden="true">&nbsp;</span>
				</a></li>
			</ul>
		</div>
	</div>
	<div id="img">
	<div id="hezi"></div>
	<div class="denglu">
		<div class="top">
			<h2 class="nb">N B 书 店</h2>
		</div>
		<div class="content">
			<div class="shang">
				<form class="form-horizontal" action="login" method="post">
					<div>
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"> <span
							class="glyphicon glyphicon-user"></span>
						</span> <input type="text" name="username" class="form-control"
							placeholder="Username" aria-describedby="basic-addon1" id="username_denglu">
					</div>
						<span id="helpBlock1" class="help-block">&nbsp;</span>
					</div>
					<div>
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"> <span
							class="glyphicon glyphicon-lock"></span>
						</span> <input type="password" name="password" class="form-control"
							placeholder="Password" aria-describedby="basic-addon1" id="password_denglu">
					</div>
						<span id="helpBlock2" class="help-block">&nbsp;</span>
					</div>
					<div>
					<div class="yancheng">
						<div class="tupian">
							<img src="${pageContext.request.contextPath }/validateColorServlet" />
						</div>
						<div class="shulu">
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon1"> <span
									class="glyphicon glyphicon-edit"></span>
								</span> <input type="text" name="code" class="form-control"
									aria-describedby="basic-addon1" placeholder="Code" id="code_denglu">
							</div>
						</div>
					</div>
						<span id="helpBlock3" class="help-block">&nbsp;</span>
					</div>
					<br />
					<div class="button">
						<input class="btn btn-primary an" type="submit" value="登 录" id="submit_denglu"/>
					</div>
				</form>
			</div>
			<div class="float">
				<button type="button" class="btn btn-info an" data-toggle="modal"
					data-target="#myModal">注 册</button>
			</div>
		</div>
	</div>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">账号注册</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" action="zhuce">
						<!-- Username -->
						<div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Username</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="username"
									placeholder="Username" name="username">
							</div>
						</div>
							<span id="helpBlock4" class="help-block">&nbsp;</span>
						</div>
						<!-- Password -->
						<div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									placeholder="Password" name="password">
							</div>
						</div>
							<span id="helpBlock5" class="help-block">&nbsp;</span>
						</div>
						<!-- Repassword -->
						<div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Repassword</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="repassword"
									placeholder="Repassword">
							</div>
						</div>
							<span id="helpBlock6" class="help-block">&nbsp;</span>
						</div>
						<button type="submit" class="btn btn-primary" id="tijiao">提交</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$("#username_denglu").change(function() {
			var reg = /^[0-9]{7}$/;
			var username = $(this).val();
			$("#helpBlock1").parent().removeClass("has-success has-error");
			$("#helpBlock1").html("&nbsp;");
			if(!reg.test(username)){
				$("#helpBlock1").parent().addClass("has-error");
				$("#helpBlock1").html("请输入7位数字的用户名");
			}else{
				$("#helpBlock1").parent().addClass("has-success");
				$("#helpBlock1").html("&nbsp;&nbsp;");
			}
		})
		
		$("#password_denglu").change(function() {
			var password = $(this).val();
			$("#helpBlock2").parent().removeClass("has-success has-error");
			$("#helpBlock2").html("&nbsp;");
			if(password.trim() == ""){
				$("#helpBlock2").parent().addClass("has-error");
				$("#helpBlock2").html("密码不能为空");
			}else{
				$("#helpBlock2").parent().addClass("has-success");
				$("#helpBlock2").html("&nbsp;&nbsp;");
			}
		})
		
		$(":input[name='code']").change(function() {
			var code = $(this).val();
			$("#helpBlock3").parent().removeClass("has-success has-error");
			$("#helpBlock3").html("&nbsp;");
			$.ajax({
				url : "${pageContext.request.contextPath }/code",
				type : "GET",
				success:function(result){
					if(code.toLowerCase() != result.toLowerCase()){
						$("#helpBlock3").parent().addClass("has-error");
						$("#helpBlock3").html("验证码错误");
					}else{
						$("#helpBlock3").parent().addClass("has-success");
						$("#helpBlock3").html("&nbsp;&nbsp;");
					}
				}
			})
		})
		
		$("#submit_denglu").click(function() {
			var error_username = $("#helpBlock1").html();
			var error_password = $("#helpBlock2").html();
			var error_code = $("#helpBlock3").html();
			if(error_username != "&nbsp;&nbsp;" || error_password != "&nbsp;&nbsp;" || error_code != "&nbsp;&nbsp;"){
				if(error_username != "&nbsp;&nbsp;"){
					$("#helpBlock1").parent().addClass("has-error");
					$("#helpBlock1").html("请输入7位数字的用户名");
				}
				if(error_password != "&nbsp;&nbsp;"){
					$("#helpBlock2").parent().addClass("has-error");
					$("#helpBlock2").html("密码不能为空");
				}
				if(error_code != "&nbsp;&nbsp;"){
					$("#helpBlock3").parent().addClass("has-error");
					$("#helpBlock3").html("验证码错误");
				}
				return false;
			}
			<%
				String error = (String) session.getAttribute("error");
			%>
		})
		<%
			if(error != null && error != ""){
		%>
				alert("用户名或密码错误！");
		<%
				session.removeAttribute("error");
			}
		%>
		
		$("#password").change(function() {
			var password = $(this).val();
			var repassword = $("#repassword").val();
			$("#helpBlock5").parent().removeClass("has-success has-error");
			$("#helpBlock5").html("&nbsp;");
			if(password.trim() == ""){
				$("#helpBlock5").parent().addClass("has-error");
				$("#helpBlock5").html("密码不能为空");
			}else{
				$("#helpBlock5").parent().addClass("has-success");
				$("#helpBlock5").html("&nbsp;&nbsp;");
				$("#helpBlock6").parent().removeClass("has-success has-error");
				$("#helpBlock6").html("&nbsp;");
				if(repassword != ""){
					if(password != repassword){
						$("#helpBlock6").parent().addClass("has-error");
						$("#helpBlock6").html("两次输入的密码不一样");
					}else{
						$("#helpBlock6").parent().addClass("has-success");
						$("#helpBlock6").html("&nbsp;&nbsp;");
					}
				}
			}
		})
		
		$("#repassword").change(function() {
			var password = $("#password").val();
			var repassword = $(this).val();
			$("#helpBlock6").parent().removeClass("has-success has-error");
			$("#helpBlock6").html("&nbsp;");
			if(password != repassword){
				$("#helpBlock6").parent().addClass("has-error");
				$("#helpBlock6").html("两次输入的密码不一样");
			}else{
				$("#helpBlock6").parent().addClass("has-success");
				$("#helpBlock6").html("&nbsp;&nbsp;");
			}
		})
		
		$("#username").change(function() {
			var reg = /^[0-9]{7}$/;
			var username = $(this).val();
			$("#helpBlock4").parent().removeClass("has-success has-error");
			$("#helpBlock4").html("&nbsp;");
			$.ajax({
				url : "${pageContext.request.contextPath }/username",
				type : "GET",
				success:function(result){
					if(!reg.test(username)){
						$("#helpBlock4").parent().addClass("has-error");
						$("#helpBlock4").html("请输入7位数字的用户名");
					}else{
						$("#helpBlock4").parent().addClass("has-success");
						$("#helpBlock4").html("&nbsp;&nbsp;");
						for(var i = 0; i < result.length; i++){
							if(username == result[i]){
								$("#helpBlock4").parent().addClass("has-error");
								$("#helpBlock4").html("该用户名已存在");
								break;
							}
						}
					}
				}
			})
		})
		
		$("#tijiao").click(function() {
			var error_username = $("#helpBlock4").html();
			var error_password = $("#helpBlock5").html();
			var error_repassword = $("#helpBlock6").html();
			if(error_username != "&nbsp;&nbsp;" || error_password != "&nbsp;&nbsp;" || error_repassword != "&nbsp;&nbsp;"){
				if(error_username != "&nbsp;&nbsp;"){
					$("#helpBlock4").parent().addClass("has-error");
					$("#helpBlock4").html("请输入7位数字的用户名");
				}
				if(error_password != "&nbsp;&nbsp;"){
					$("#helpBlock5").parent().addClass("has-error");
					$("#helpBlock5").html("密码不能为空");
				}
				if(error_repassword != "&nbsp;&nbsp;"){
					$("#helpBlock6").parent().addClass("has-error");
					$("#helpBlock6").html("密码不能为空");
				}
				return false;
			}
			alert("注册成功！");
		})
	</script>
</body>

</html>