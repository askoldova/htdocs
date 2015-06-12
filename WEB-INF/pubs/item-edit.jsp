<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="gp" uri="/WEB-INF/gushuley-portal.tld" %>
<gp:plugin name="warnings"/>
<script type="text/javascript" src="../tiny_mce/tiny_mce.js"></script>
<div class="contentheading">
	<c:if test="${portalAction.item.publication.subcats[0] != null}">
		<gp:caption item="${portalAction.item.publication.subcats[0].captions}"/></c:if>
</div>
<form action="item-edit,${portalAction.item.publication.key}" method="post">
	<input type="hidden" name="scats" value="${portalAction.scats}">
	<strong>Категорія:</strong>
	<c:forEach var="sc" items="${portalAction.itemSubcats}" varStatus="st">
		<select name="subcategory${st.index}">
			<c:forEach items="${portalAction.categories}" var="c">
				<option value="${c.key}" ${c.key == sc.key ? 'selected' : '' }>
					<gp:caption item="${c.captions}"/></option>
			</c:forEach>
		</select>
	</c:forEach>
	<input type="submit" name="do-add-category" value="Додати категорію"><br>
	<strong>Тип:</strong>
	<select name="type">
		<c:forEach items="${portalAction.types}" var="c">
			<option value="${c}" ${c == portalAction.item.publication.type ? 'selected' : '' }>
				<gp:caption item="${c.captions}"/></option>
		</c:forEach>
	</select><br>
	<strong>Статус:</strong>
	<select name="pub-state">
		<c:forEach items="${portalAction.itemStates}" var="c">
			<option value="${c}" ${c == portalAction.item.state ? 'selected' : '' }>
				<gp:caption item="${c.captions}"/></option>
		</c:forEach>
	</select><br>
	<strong>Заголовок:</strong> <input name="pub-title" type="text" value="<c:out value="${portalAction.item.title}" escapeXml="true"/>" size="80"><br>
	<strong>Автор:</strong> <input name="pub-author" type="text" value="<c:out value="${portalAction.item.author}" escapeXml="true"/>" size="40"><br>
	<strong>Дата:</strong> <input name="pub-date" type="text" value="${portalAction.pubDate.string}" size="18">
		<input type="checkbox" name="pub-show-date" id="pub-show-date" ${portalAction.item.showDate ? 'checked' : ''}><label for="pub-show-date"><strong>Показувати</strong></label><br>
	<input type="checkbox" name="pub-enable-comments" id="pub-enable-comments" ${portalAction.item.comments ? 'checked' : ''}>
	<label for="pub-enable-comments"><strong>Дозволити коментарі</strong></label><br>
	<input type="submit" name="do-store" value="Зберегти"/>
	<input type="submit" name="do-remove" value="Видалити" onclick="return confirm('Справді хочете видалити публікацію?');"/>
	<c:if test="${portalAction.item.key gt 0}"><a href="item,${portalAction.item.publication.key}" target="_blank">Перегляд</a></c:if> 
	<c:if test="${portalAction.item.publication.key gt 0}"><a href="item-imgs,${portalAction.item.publication.key}" target="_blank">Добавити ілюстрацію</a></c:if> 
	<br>
	<strong>Текст короткий:</strong>
	<textarea style="width: 100%" rows="15" name="pub-text-short">${gp:eschapeXml(portalAction.item.textShort)}</textarea><br>
	<strong>Текст повний:</strong> 
	<textarea style="width: 100%" rows="40" name="pub-text">${gp:eschapeXml(portalAction.item.text)}</textarea><br>
</form>	
<script type="text/javascript">
	tinyMCE.init({
		// General options
		mode : "textareas",
		theme : "advanced",
		plugins : "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,media,advhr,|,ltr,rtl,|,fullscreen",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,link,unlink,anchor,image,code",
		theme_advanced_buttons4 : "absolute,|,styleprops,|,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : true,
		language: "${requestScope['com.gushuley.portal.language']}",
		// Example content CSS (should be your site CSS)
		content_css : "../css/template.css"
	});
</script>
