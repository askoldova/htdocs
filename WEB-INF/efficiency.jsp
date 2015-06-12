<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/gushuley-portal.tld" prefix="gp" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<h1><gp:caption item="${category.captions}"/></h1>
<div class="column_text">
<c:forEach var="i" items="${category.items}">
	<p>- <a href="node,${i.key}"><gp:caption item="${i.captions}"/></a></p>
</c:forEach>
</div>