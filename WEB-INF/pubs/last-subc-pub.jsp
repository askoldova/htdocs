<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<h1><a href="node,${portalPlugin.item.subcats[0].key}">
<am:caption item="${portalPlugin.item.subcats[0].captions}"/>
</a></h1> 
<div class="column_text" style="color:#E56E0D;">
	${portalPlugin.item.text}
</div> 