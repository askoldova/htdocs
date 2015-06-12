<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/gushuley-portal.tld" prefix="gp" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<div class="contentheading">Реєстрація</div>
<gp:plugin name="warnings"/>
<div class="column_text">
	<form action="register" method="POST">
	Будь, ласка вкажіть Ваші дані, щоб отримувати важливу інформацію від нашої церкви.
	<table>
		<tr><th>Прізвище, Ім'я</th><td><input type="text" value="${portalAction.name}" maxlength="100" size="60" name="name"> </td></tr>
		<tr><th>Електронна адреса</th><td><input type="text" value="${portalAction.email}" maxlength="100" size="60" name="email"> </td></tr>
		<tr><th>&nbsp;</th><td><img src="../kaptcha.jpg" id="kaptcha" 
			onclick="this.src='../kaptcha.jpg?' + Math.floor(Math.random()*100)" style="cursor: pointer;">
			<br /><small>Не можете прочитати малюнок? Натисньть на нього, щоб отримати новий.</small>
			</td></tr>
		<tr><td colspan="2">Повторіть символи з малюнку зверху:<input type="text" name="kaptcha"></td></tr>
		<tr><th>&nbsp;</th><td><input type="submit" name="do-register" value="Зареєструватися"></td></tr>
	</table>
	</form>
</div>
