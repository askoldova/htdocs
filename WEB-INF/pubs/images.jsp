<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="gp" uri="/WEB-INF/gushuley-portal.tld" %>
<div class="contentheading">Зображення публікації</div> 
<gp:plugin name="warnings"/>
<div class="column_text"> 
<form action="item-imgs,${portalAction.pub.key}" method="post" enctype="multipart/form-data">
	Зображення <input type="file" name="img"><br>
	
	<c:set var="fullCheked" value="${portalAction.trim ? 'checked' : '' }"/>
	<c:set var="limitCheked" value="${!portalAction.trim ? '' : 'checked' }"/>
	<input type="radio" name="size-type" value="full" ${fullChecked} id="cbFull"><label for="cbFull">Повний розмір</label>
	<input type="radio" name="size-type" value="limit" ${limitCheked} id="cbLimit"><label for="cbLimit">Обмежити до</label>
	
	<input type="text" name="img-size" size="5" value="${portalAction.trimSize}">пікселів<br>
	<input type="checkbox" name="override-img" id="overrideImg" ${portalAction.override ? 'checked' : '' }><label for="overrideImg">Перезаписати існуючу ілюстрацію</label><br> 
	<input type="submit" name="do-submit" value="Завантажити">
	<br>
	<table border="0" width="100%">
		<c:forEach items="${portalAction.images}" var="row">
			<tr>
				<c:forEach items="${row}" var="i">
					<td align="center">
						<img src="image,${i.pub.key},${portalAction.defaultSize},${i.name}">
						<br>
						Частковий розмір <a target="_blank" href="image,${i.pub.key},${portalAction.defaultSize},${i.name}">image,${i.pub.key},${portalAction.defaultSize},${i.name}</a><br>
						Повний розмір <a target="_blank" href="image,${i.pub.key},${i.name}">image,${i.pub.key},${i.name}</a>
					</td>
				</c:forEach>
			</tr>			
		</c:forEach>
	</table>  
</form>
</div>