<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/gushuley-portal.tld" prefix="gp" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<h1><gp:caption item="${category.captions}"/></h1>
<div class="column_text"> 
<c:forEach var="i" items="${items}">
	<h2><a href="node,${i.subcategory.key}"><gp:caption item="${i.subcategory.captions}"/></a></h2>
	<c:forEach var="p" items="${i.items}"> 
		<p><a href="item,${p.publication.key}">${p.title}</a></p>
		${p.textShort} 
	</c:forEach> 
</c:forEach>
<h2><a href="#"></a></h2>
</div> 