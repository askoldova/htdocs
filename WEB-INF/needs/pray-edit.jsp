<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="gp" uri="/WEB-INF/gushuley-portal.tld" %>
<gp:plugin name="warnings"/>
<script type="text/javascript" src="../tiny_mce/tiny_mce.js"></script>
<div class="contentheading">Потреба в молитві</div>
<form action="needs-in-pray-edit,${portalAction.item.key}" method="post">
	<strong>Дійсно до:</strong>
	<input name="valid-to" type="text" value="${portalAction.date.string}" size="10"><br>
	<br>
	<strong>Текст:</strong>
	<textarea style="width: 100%" rows="10" name="data">${gp:eschapeXml(portalAction.item.data)}</textarea><br>
	<a href="needs-in-pray">Назад</a> 
	<input type="submit" name="do-store" value="Зберегти"/>
</form>	
<script type="text/javascript">
	tinyMCE.init({
		mode : "textareas",
		theme : "simple"
	});
</script>
