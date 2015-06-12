<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<div class="chromestyle" id="chromemenu">
	<ul>
		<li><a href="./">Головна</a></li>
		<c:forEach items="${items}" var="item" varStatus="s">
			<c:if test="${not item.hidden}">
				<li><a href="submenu,${item.key}" rel="dropmenu${s.index + 1}"><am:caption item="${item.captions}"/></a></li>
			</c:if>
		</c:forEach>
	</ul>
</div>

<c:forEach items="${items}" var="item" varStatus="s">
	<c:if test="${not item.hidden}">
		<c:set var="width" value=""/>
		<c:if test="${item.width gt 0}">
			<c:set var="width">style="width: ${item.width}px;"</c:set>
		</c:if>
		<div id="dropmenu${s.index + 1}" class="dropmenudiv" ${width}>
			<c:forEach items="${item.items}" var="i2">
				<a href="node,${i2.key}"><am:caption item="${i2.captions}"/></a>
			</c:forEach>
		</div>
	</c:if>
</c:forEach>

<script type="text/javascript">
	cssdropdown.startchrome("chromemenu")
</script>

