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

<style>
body {
	margin: 0;
	padding: 0;
	background-color: #F8F8F8;
}

#img {
	background-image: url(static/img/1.jpg);
	background-size: contain;
	background-repeat: no-repeat;
	background-position: center center;
	/*background-attachment: fixed;*/
	background-size: cover;
	background-color: #464646;
	height: 800px;
	width: 100%;
}

button {
	background-color: black;
	color: white;
	opacity: 0;
}

#button {
	float: left;
	margin: 540px 900px;
}
</style>
</head>

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
		<div id="button">
			<a href="shop.jsp">
				<button>点 此 进 入 啊</button>
			</a>
		</div>
	</div>

</body>

</html>