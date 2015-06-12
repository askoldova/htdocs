<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
 
<c:forEach items="${errors}" var="e" varStatus="s">
	<c:if test="${s.first}">
		<div class="commentheading" >Помилки</div> 
		<div>
		<ol style="color: red">
	</c:if>
	<li>${e}</li>
	<c:if test="${s.last}">
		</ol> 
		</div>
	</c:if>
</c:forEach>
