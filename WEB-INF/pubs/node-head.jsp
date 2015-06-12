<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/gushuley-portal.tld" prefix="gp" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<h1><a href="node,${items.subcategory.key}"><gp:caption item="${items.subcategory.captions}"/></a></h1>
<div class="column_text"> 
<c:forEach var="i" items="${items.items}">
	<h2><a href="#"></a></h2>
	<p><a href="${i.link}">${i.caption}</a></p>
	${i.text}
	<a href="${i.link}" class="readon">Докладніше</a> 
</c:forEach>
</div>