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


	<div class="container">
		<div class="progress">
			<div class="progress-bar progress-bar-success gray-dark" role="progressbar" aria-valuenow="25"
				aria-valuemin="25" aria-valuemax="100" style="min-width: 25%;">
				验证提货券</div>
			<div class="progress-bar  progress-bar-warning" role="progressbar" aria-valuenow="25"
				aria-valuemin="25" aria-valuemax="100" style="min-width: 25%;">
				输入收货地址</div>
			<div class="progress-bar progress-bar-info" role="" aria-valuenow="25"
				aria-valuemin="25" aria-valuemax="100" style="min-width: 25%;">
				发货</div>
			<div class="progress-bar" role="progressbar" aria-valuenow="25"
				aria-valuemin="25" aria-valuemax="100" style="min-width: 25%;">
				收货</div>
			
		</div>

		<form class="form-horizontal">

			<div class="form-group">
				<label for="receiver" class="col-sm-2 control-label">收货人</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="receiver"
						name="receiver" placeholder="收货人姓名">
				</div>
			</div>

			<div class="form-group">
				<label for="province" class="col-sm-2 control-label">所在地区</label>
				<div class="col-sm-2">
					<select class="form-control">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="col-sm-2">
					<select class="form-control">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="col-sm-2">
					<select class="form-control">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label for="address" class="col-sm-2 control-label">详细地址</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="address" name="address"
						placeholder="详细地址">
				</div>
			</div>
			<div class="form-group">
				<label for="mobile" class="col-sm-2 control-label">手机号</label>
				<div class="col-sm-3">
					<input type="tel" class="form-control" id="mobile"
						placeholder="手机号码">
				</div>
				<label for="tel" class="col-sm-1 control-label">固定电话</label>
				<div class="col-sm-3">
					<input type="tel" class="form-control" id="tel" name="tel"
						placeholder="固定电话">
				</div>
			</div>

			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">邮箱</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="email" name="email"
						placeholder="Password">
				</div>
			</div
  
 

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="button" class="btn btn-success">提交收货信息</button>
		</div>
	
	</div>
	</form>
	</div>

	<!-- Site footer -->
	<footer class="footer">
	<div class="container"></div>
	</footer>



</body>
</html>
