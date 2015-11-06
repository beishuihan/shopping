<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<%@ include file="common/head.inc"%>
</head>
<body>
	<%@ include file="common/nav.inc"%>

	<div class="container-fluid">
		<div class="jumbotron">
			<h1>Hello, goldfish!</h1>
			<p>...</p>
			<p>
			<form class="form-horizontal"
				action="<c:url value="/delivery"></c:url>" method="post">
				<div class="row">
					<div class="form-group">
						<label for="receiver" class="col-sm-2 control-label">提货券密码</label>
						<div class="col-sm-4">
							<input type="text" class="form-control input-lg" id="receiver"
								name="receiver" placeholder="请输入提货券密码">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="receiver" class="col-sm-2 control-label">验证码</label>
						<div class="col-sm-3">
							<div class="input-group input-group-lg">
								<input type="text" class="form-control" placeholder=""
									aria-describedby="basic-addon2"> <span
									class="input-group-addon" id="basic-addon2"
									style="padding: 0px"> <img alt=""
									src="<c:url value="/district/image"></c:url>"></span>
							</div>
						</div>

					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success">提交验证码</button>
					</div>

				</div>
			</form>
			</p>
		</div>
	</div>
</body>
</html>
