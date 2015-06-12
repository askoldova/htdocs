<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt"%>
<fmt:setLocale value="${lang.locale}"/>
<fmt:setBundle basename="org.askoldova.ui.login" var="msg"/>
<div class="contentheading"><fmt:message bundle="${msg}" key="title.to.login"/></div>
<div class="column_text" style="color: rgb(229, 110, 13);">
	<c:if test="${ivalidLogin}">
		<h1><fmt:message bundle="${msg}" key="bad.login"/></h1>
	</c:if>
	<form action="login" method="POST">
		<fmt:message bundle="${msg}" key="login"/>
		<input name="login" type="text" value="${login}">
		<br>
		<fmt:message bundle="${msg}" key="password"/>
		<input name="password" type="password">
		<br>
		<c:choose>
			<c:when test="${remember}"><input id="remember" type="checkbox" name="remember" checked></c:when>
			<c:otherwise><input id="remember" type="checkbox" name="remember"></c:otherwise>
		</c:choose>		
		<label for="remember"><fmt:message bundle="${msg}" key="remember"/></label>
		<br>
		<fmt:message bundle="${msg}" key="submit" var="submitTitle"/>
		<input type="submit" name="doLogin" value="${submitTitle}">
	</form>
</div>
