<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<%@ include file="common/head.inc"%>
</head>
<body>
	<%@ include file="common/nav.inc"%>
	<div class="container">
		<table class="table">
			<thead>
				<td>编号</td>
				<td>密码</td>
				<td>状态</td>
				<td>管理</td>
			</thead>
			<tbody>
				<c:forEach items="${vouchers}" var="voucher" varStatus="st">
					<tr>
						<td>${st.count}</td>
						<td>${voucher.secret}</td>
						<td>${voucher.status}</td>
						<td>
						<div class="btn-group btn-group-sm" role="group" aria-label="...">
						<button type="button" class="btn btn-default">冻结</button>
						<button type="button" class="btn btn-default">发货</button>
						</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
</body>
</html>
