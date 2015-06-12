<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<div class="contentheading">Потреба в молитві</div> 
<c:forEach items="${portalAction.needs}" var="item" varStatus="s">
	${item.data}
	<c:if test="${portalAction.user.auth}">
		<p><strong>Дійсно до:</strong> ${item.expDate}</p>
		<a href="needs-in-pray-edit,${item.key}" class="readon">Редагувати</a>
		<a href="needs-in-pray-remove,${item.key}" class="readon" 
			onclick="return confirm('Справді хочете видалити елемент?');">Видалити</a>
	</c:if>
	<c:if test="${not s.last}"><a href="#" class="readon_split"></a></c:if>
</c:forEach>
<c:if test="${portalAction.user.auth}">
	<br>
	<a href="needs-in-pray-edit" class="readon">Додати</a>
</c:if>
