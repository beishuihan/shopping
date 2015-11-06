<%@ page language="java" contentType="text/html; charset=UTF-8"%>

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
			<a class="navbar-brand" href="#">XX礼品</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="<c:url value="/"/>">首页</a></li>
				<li class="active"><a href="<c:url value="/garden/vouchers"/>">提货券管理 <span class="sr-only">(current)</span></a></li>

			</ul>
		</div>
		<!-- /.container-fluid -->
</nav>