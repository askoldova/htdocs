<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<c:forEach items="${langs}" var="item" varStatus="s">
	<c:if test="${!s.first}">|</c:if>
	<c:choose>
		<c:when test="${item == requestScope['com.gushuley.portal.language']}">
			<a id="active_lang"><am:caption item="${item.captions}"/></a>
		</c:when>
		<c:otherwise>
			<a href="../${item.locale.language}/" id="passive_lang"><am:caption item="${item.captions}"/></a>
		</c:otherwise>		
	</c:choose>
</c:forEach>
