<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>가입 환영합니다.</h2>
<h3>가입 시 입력하신 정보입니다.</h3>
<table style="width:500px"> 
	<tr>
		<th width="100px" align="left">ID</th>
		<td>${requestScope.member.id }</td>
	</tr>
	<tr>
		<th  align="left">패스워드</th>
		<td>${requestScope.member.password}</td>
	</tr>
	<tr>
		<th align="left">이름</th>
		<td>${requestScope.member.name}</td>
	</tr>
	<tr>
		<th align="left">이메일</th>
		<td>${requestScope.member.email}</td>
	</tr>
	<tr>
		<th align="left">가입일</th>
		<td>${requestScope.member.joinDate}</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:choose>
				<c:when test="${empty requestScope.member.pictureName }">
					<img src="${initParam.rootPath }/uploadPhoto/no-photo.png">
				</c:when>
				<c:otherwise>
					<img src="${initParam.rootPath }/uploadPhoto/${requestScope.member.pictureName }">
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
</table>












