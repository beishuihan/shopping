<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<c:url value="/resources/jquery/jquery-1.11.3.min.js"/>"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="shortcut icon"
	href="<c:url value="/resources/img/favicon.ico"/>">
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">大金鱼礼品</a>
		</div>

	</div>
	<!-- /.container-fluid --> </nav>


	<main class="container">
	<div class="jumbotron">
		<h1>Hello, goldfish!</h1>
		<p>...</p>
		<p>
		<form action="<c:url value="/delivery"></c:url>" method="post">
			<div class="row">
				<div class="col-lg-6">
					<div class="input-group">
						<input name="secret" type="text" class="form-control"
							placeholder="请输入提货券代码"> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">提货</button>
						</span>

					</div>
				</div>
			</div>
		</form>
		</p>
	</div>
	</main>

	<!-- Site footer -->
	<footer class="footer">
	<div class="container"></div>
	</footer>
	<script type="text/javascript">
	
	</script>
</body>
</html>
