<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/jQuery/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background-color: #F8F8F8;
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
</body>
</html>