<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<div>
<c:forEach items="${items}" var="item">
	<a href="node,${item.key}"><am:caption item="${item.captions}"/></a> ::
</c:forEach>
</div>