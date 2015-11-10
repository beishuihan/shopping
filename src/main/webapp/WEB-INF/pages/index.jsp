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

				<div class="form-group">
					<label for="secrect" class="col-sm-2 control-label">提货券密码</label>
					<div class="col-xs-2 col-sm-4">
						<div class="form-group ">
							<input type="text" class="form-control input-lg" id="secrect"
								name="secrect" placeholder="请输入提货券密码"> 
								<div class="alert alert-warning alert-dismissible fade in hidden"
								role="alert">
								请输入提货券密码再提交!
							</div>
								<span
								id="helpBlock" class="help-block"> 刮开提货券下方涂层,输入密码 </span>
							
						</div>
					</div>
				</div>

				<div class="form-group ">
					<label for="receiver" class="col-sm-2 control-label">验证码</label>
					<div class="col-sm-3  has-feedback form-group">
						<input type="text" class="form-control input-lg" id="captcha"
							name="captcha"> <span
							class="glyphicon  form-control-feedback" aria-hidden="true">
						</span>

					</div>
					<div class="col-sm-1" style="">
						<span class="input-group-addon" id="basic-addon2"
							style="padding: 0px;"> <img id="captchaImg" alt=""
							src="<c:url value="/captcha/image"></c:url>"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button id="captchaBtn" type="submit" class="btn btn-success"
							disabled>提交券码</button>
					</div>
				</div>
			</form>
			</p>
		</div>
	</div>

	<script type="text/javascript">
		var captchaPath = "";
		$('#captchaImg').click(function() {
			if (captchaPath == "") {
				captchaPath = $(this).attr('src') + "?";
			}
			$(this).attr('src', captchaPath + new Date());
		})
		$('#captcha').keyup(
				function() {
					if ($(this).val().length == 4) {
						$.ajax({
							type : "POST",
							url : "<c:url value="/captcha/validate"/>",
							data : {
								"code" : $('#captcha').val()
							},
							success : function(result) {
								if (result) {
									$('#captcha').parent().addClass(
											'has-success')
									$('#captcha').parent().removeClass(
											'has-error')
									$('#captcha').next().addClass(
											'glyphicon-ok')
									$('#captcha').next().removeClass(
											'glyphicon-remove')
									$('#captchaBtn').removeAttr('disabled');
								} else {
									$('#captcha').parent().removeClass(
											'has-success');
									$('#captcha').parent()
											.addClass('has-error');
									$('#captcha').next().addClass(
											'glyphicon-remove');
									$('#captcha').next().removeClass(
											'glyphicon-ok');
									$('#captchaBtn').attr('disabled', "true");
								}
							}
						});
					} else {
						$('#captcha').parent().removeClass(
								'has-error has-success');
						$('#captcha').next().removeClass(
								'glyphicon-ok glyphicon-remove');
						$('#captchaBtn').attr('disabled', "true");
					}
				})
		$('#captchaBtn').click(function() {
			if ($('#secrect').val() == "") {
				$('#secrect').next().removeClass('hidden');
			}else{
				
				return true;
			}

			return false;
		})
	</script>
</body>
</html>
