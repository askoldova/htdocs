<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<div class="contentheading"><am:caption item="${subcategory.captions}"/></div> 
<c:forEach items="${bundle.items}" var="item" varStatus="s">
	<h1><a href="${item.link}">${item.caption}</a></h1>
	<c:if test="${item.showDate}"><p><span class="date">${item.date}</span></p></c:if>
	${item.text}
	<table width="100%">
	<c:forEach var="imgs" items="${item.images}"><tr>
		<c:forEach var="img" items="${imgs}"><td>
			<c:choose>
				<c:when test="${img == nul}">&nbsp;</c:when>
				<c:when test="${am:isEmpty(img.link)}"><img alt="" src="${img.picture}"></c:when>
				<c:otherwise><a href="${img.link}" id="group" rel="${item.key}"><img alt="" src="${img.picture}"></a></c:otherwise>
			</c:choose>
		</td></c:forEach>
	</tr></c:forEach>
	</table>
	<p><c:forEach var="sc" items="${item.subcats}" varStatus="st"><c:if test="${not st.first}">, </c:if>
	<a href="node,${sc.key}" class="category"><am:caption item="${sc.captions}"/></a></c:forEach></p>	
	<c:if test="${user.auth}"><a href="item-edit,${item.key}" class="readon">Редагувати</a></c:if>
	<c:choose>
		<c:when test="${not s.last}"><a href="${item.link}" class="readon_split">${item.linkCaption}</a></c:when>
		<c:otherwise><a href="${item.link}" class="readon">${item.linkCaption}</a></c:otherwise> 	
	</c:choose>
</c:forEach>
<am:pager pager="${portalAction.pager}" urlTemplate="node,${portalAction.subcategory.key}," id="subcategory-pager"/>
