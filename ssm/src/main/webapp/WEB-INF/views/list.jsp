<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>书库列表</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/jQuery/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<style type="text/css">
body {
	background-color: #F8F8F8;
}

#baocun1, #baocun2 {
	float: right;
	position: relative;
	top: 31px;
	left: 7px;
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
	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<h1>书库管理</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" data-toggle="modal"
					data-target="#addBook">新增</button>
				<button class="btn btn-danger shanchu2">删除</button>
			</div>
		</div>
		<br>
		<form action="" method="post" id="form">
			<input type="hidden" name="_method" value="DELETE">
		</form>
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover">
					<tr>
						<th><input type="checkbox" id="check_all"></th>
						<th>图书编号</th>
						<th>图书名称</th>
						<th>图书价格</th>
						<th>图书库存</th>
						<th>图书分类</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${pageInfo.list }" var="book">
						<tr>
							<td><input type="checkbox" class="check_item"></td>
							<td>${book.bookId }</td>
							<td>${book.bookName }</td>
							<td>${book.bookPrice }</td>
							<td>${book.bookNum }</td>
							<td>${book.bookType.typeName }</td>
							<td>
								<button class="btn btn-primary btn-sm bianji"
									data-toggle="modal" data-target="#editBook"
									value="${book.bookId }">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
									编辑
								</button> <a href="" id="href">
									<button class="btn btn-danger btn-sm shanchu1"
										value="${book.bookId }">
										<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
										删除
									</button>
							</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				当前<span class="label label-default">${pageInfo.pageNum }</span>页, 总共<span
					class="label label-default">${pageInfo.pages }</span>页, 总共<span
					class="label label-default">${pageInfo.total }</span>条记录
			</div>
			<div class="col-md-6">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li><a href="${pageContext.request.contextPath }/books?pn=1">首页</a></li>
						<c:if test="${pageInfo.hasPreviousPage }">
							<li><a
								href="${pageContext.request.contextPath }/books?pn=${pageInfo.pageNum - 1}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>
						<c:if test="${!pageInfo.hasPreviousPage }">
							<li class="disabled"><a href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>
						<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
							<c:if test="${page_Num == pageInfo.pageNum }">
								<li class="active"><a href="#">${page_Num }</a></li>
							</c:if>
							<c:if test="${page_Num != pageInfo.pageNum }">
								<li><a
									href="${pageContext.request.contextPath }/books?pn=${page_Num }">${page_Num }</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${pageInfo.hasNextPage }">
							<li><a
								href="${pageContext.request.contextPath }/books?pn=${pageInfo.pageNum + 1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
						<c:if test="${!pageInfo.hasNextPage }">
							<li class="disabled"><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
						<li><a
							href="${pageContext.request.contextPath }/books?pn=${pageInfo.pages }">末页</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="modal fade" id="addBook" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">添加图书</h4>
					</div>
					<div class="modal-body">
						<form:form class="form-horizontal"
							action="${pageContext.request.contextPath }/book" method="post"
							modelAttribute="book">
							<!-- Bookname -->
							<div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Bookname</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control" id="book_name"
											placeholder="Bookname" path="bookName"></form:input>
									</div>
								</div>
								<span id="helpBlock1" class="help-block">&nbsp;</span>
							</div>
							<!-- Bookprice -->
							<div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Bookprice</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control" id="book_price"
											placeholder="Bookprice" path="bookPrice"></form:input>
									</div>
								</div>
								<span id="helpBlock2" class="help-block">&nbsp;</span>
							</div>
							<!-- Booknum -->
							<div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Booknum</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control" id="book_num"
											placeholder="Booknum" path="bookNum"></form:input>
									</div>
								</div>
								<span id="helpBlock3" class="help-block">&nbsp;</span>
							</div>
							<!-- Booktype -->
							<div class="form-group">
								<label class="col-sm-2 control-label">Booktype</label>
								<div class="col-sm-4">
									<form:select class="form-control" path="tId"
										items="${bookTypes }" itemLabel="typeName" itemValue="typeId">
									</form:select>
								</div>
							</div>
							<button type="submit" class="btn btn-primary" id="baocun1">保存</button>
						</form:form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>


		<div class="modal fade" id="editBook" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">修改图书</h4>
					</div>
					<div class="modal-body">
						<form:form class="form-horizontal"
							action="${pageContext.request.contextPath }/book" method="post"
							modelAttribute="book">
							<input type="hidden" name="_method" value="PUT">
							<form:hidden path="bookId" id="book_id_edit" />
							<form:hidden path="bookName" id="book_name_edit" />
							<!-- Bookname -->
							<div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Bookname</label>
									<div class="col-sm-10">
										<p class="form-control-static"></p>
									</div>
								</div>
								<span id="helpBlock4" class="help-block">&nbsp;</span>
							</div>
							<!-- Bookprice -->
							<div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Bookprice</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control"
											id="book_price_edit" placeholder="Bookprice" path="bookPrice"></form:input>
									</div>
								</div>
								<span id="helpBlock5" class="help-block">&nbsp;&nbsp;</span>
							</div>
							<!-- Booknum -->
							<div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Booknum</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control"
											id="book_num_edit" placeholder="Booknum" path="bookNum"></form:input>
									</div>
								</div>
								<span id="helpBlock6" class="help-block">&nbsp;&nbsp;</span>
							</div>
							<!-- Booktype -->
							<div class="form-group">
								<label class="col-sm-2 control-label">Booktype</label>
								<div class="col-sm-4">
									<form:select class="form-control" path="tId"
										items="${bookTypes }" itemLabel="typeName" itemValue="typeId"
										id="book_type_edit">
									</form:select>
								</div>
							</div>
							<button type="submit" class="btn btn-primary" id="baocun2">保存</button>
						</form:form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		$("#check_all").click(function() {
			$(".check_item").prop("checked", $(this).prop("checked"));
		})

		$(document)
				.on(
						"click",
						".check_item",
						function() {
							var flag = $(".check_item:checked").length == $(".check_item").length;
							$("#check_all").prop("checked", flag);
						})

		$("#baocun1").click(
				function() {
					var error_name = $("#helpBlock1").html();
					var error_price = $("#helpBlock2").html();
					var error_num = $("#helpBlock3").html();
					if (error_name != "&nbsp;&nbsp;"
							|| error_price != "&nbsp;&nbsp;"
							|| error_num != "&nbsp;&nbsp;") {
						if (error_name != "&nbsp;&nbsp;") {
							$("#helpBlock1").parent().addClass("has-error");
							$("#helpBlock1").html("请输入书名");
						}
						if (error_price != "&nbsp;&nbsp;") {
							$("#helpBlock2").parent().addClass("has-error");
							$("#helpBlock2").html("请输入书的价格");
						}
						if (error_num != "&nbsp;&nbsp;") {
							$("#helpBlock3").parent().addClass("has-error");
							$("#helpBlock3").html("请输入书的库存");
						}
						return false;
					}
					alert("添加成功！");
				})

		$("#book_name")
				.change(
						function() {
							var name = $(this).val();
							$("#helpBlock1").parent().removeClass(
									"has-success has-error");
							$("#helpBlock1").html("&nbsp;");
							$
									.ajax({
										url : "${pageContext.request.contextPath }/bookName",
										type : "GET",
										success : function(result) {
											if (name.trim() == "") {
												$("#helpBlock1").parent()
														.addClass("has-error");
												$("#helpBlock1").html("请输入书名");
											} else {
												$("#helpBlock1")
														.parent()
														.addClass("has-success");
												$("#helpBlock1").html(
														"&nbsp;&nbsp;");
												for (var i = 0; i < result.length; i++) {
													if (name == result[i]) {
														$("#helpBlock1")
																.parent()
																.addClass(
																		"has-error");
														$("#helpBlock1").html(
																"书名已存在!");
														break;
													}
												}
											}
										}
									})
						})

		$("#book_price").change(function() {
			var reg = /^[11-99]{2}$/;
			var price = $(this).val();
			$("#helpBlock2").parent().removeClass("has-success has-error");
			$("#helpBlock2").html("&nbsp;");
			if (!reg.test(price)) {
				$("#helpBlock2").parent().addClass("has-error");
				$("#helpBlock2").html("请输入11~99元之间的价格");
			} else {
				$("#helpBlock2").parent().addClass("has-success");
				$("#helpBlock2").html("&nbsp;&nbsp;");
			}
		})

		$("#book_num").change(function() {
			var reg = /^[1-99]{1,2}$/;
			var num = $(this).val();
			$("#helpBlock3").parent().removeClass("has-success has-error");
			$("#helpBlock3").html("&nbsp;");
			if (!reg.test(num)) {
				$("#helpBlock3").parent().addClass("has-error");
				$("#helpBlock3").html("请输入1~99之间的库存");
			} else {
				$("#helpBlock3").parent().addClass("has-success");
				$("#helpBlock3").html("&nbsp;&nbsp;");
			}
		})

		$(".bianji").click(function() {
			var id = $(this).val();
			$("#helpBlock5").parent().addClass("has-success");
			$("#helpBlock6").parent().addClass("has-success");
			$.ajax({
				url : "${pageContext.request.contextPath }/book/" + id,
				type : "GET",
				success : function(result) {
					$(".form-control-static").text(result.bookName);
					$("#book_id_edit").val(result.bookId);
					$("#book_name_edit").val(result.bookName);
					$("#book_price_edit").val(result.bookPrice);
					$("#book_num_edit").val(result.bookNum);
					$("#book_type_edit").val(result.bookType.typeId);
				}
			})
		})

		$("#book_price_edit").change(function() {
			var reg = /^[11-99]{2}$/;
			var price = $(this).val();
			$("#helpBlock5").parent().removeClass("has-success has-error");
			$("#helpBlock5").html("&nbsp;");
			if (!reg.test(price)) {
				$("#helpBlock5").parent().addClass("has-error");
				$("#helpBlock5").html("请输入11~99元之间的价格");
			} else {
				$("#helpBlock5").parent().addClass("has-success");
				$("#helpBlock5").html("&nbsp;&nbsp;");
			}
		})

		$("#book_num_edit").change(function() {
			var reg = /^[1-99]{1,2}$/;
			var num = $(this).val();
			$("#helpBlock6").parent().removeClass("has-success has-error");
			$("#helpBlock6").html("&nbsp;");
			if (!reg.test(num)) {
				$("#helpBlock6").parent().addClass("has-error");
				$("#helpBlock6").html("请输入1~99之间的库存");
			} else {
				$("#helpBlock6").parent().addClass("has-success");
				$("#helpBlock6").html("&nbsp;&nbsp;");
			}
		})

		$("#baocun2").click(function() {
			var error_price = $("#helpBlock5").html();
			var error_num = $("#helpBlock6").html();
			if (error_price != "&nbsp;&nbsp;" || error_num != "&nbsp;&nbsp;") {
				if (error_price != "&nbsp;&nbsp;") {
					$("#helpBlock5").parent().addClass("has-error");
					$("#helpBlock5").html("请输入书的价格");
				}
				if (error_num != "&nbsp;&nbsp;") {
					$("#helpBlock6").parent().addClass("has-error");
					$("#helpBlock6").html("请输入书的库存");
				}
				return false;
			}
			alert("修改成功！");
		})

		$(".shanchu1").click(
				function() {
					var id = $(this).val();
					$("#href").attr("href",
							"${pageContext.request.contextPath }/book/" + id);
					var name = $(this).parents("tr").find("td:eq(2)").text();
					var href = $(".shanchu1").parent().attr("href");
					if (confirm("确认删除【" + name + "】吗？")) {
						$("#form").attr("action", href).submit();
						alert("删除成功！");
						return false;
					}
				})

		$(".shanchu2").click(
				function() {
					var bookNames = "";
					var del_idstr = "";
					$.each($(".check_item:checked"), function() {
						bookNames += $(this).parents("tr").find("td:eq(2)")
								.text()
								+ ",";
						del_idstr += $(this).parents("tr").find("td:eq(1)")
								.text()
								+ "-";
					})
					bookNames = bookNames.substring(0, bookNames.length - 1);
					del_idstr = del_idstr.substring(0, del_idstr.length - 1);
					$("#href").attr(
							"href",
							"${pageContext.request.contextPath }/book/"
									+ del_idstr);
					var href = $(".shanchu1").parent().attr("href");
					if (del_idstr != "") {
						if (confirm("确认删除【" + bookNames + "】吗？")) {
							$("#form").attr("action", href).submit();
							alert("删除成功！");
							return false;
						}
					}
				})
	</script>

</body>
</html>