<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<div class="contentheading"><am:caption item="${item.subcats[0].captions}"/></div> 
<h1>${item.caption}</h1>
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
<div style=" padding-top: 5px; padding-bottom: 5px; "> <!-- publication categories -->
<c:forEach var="sc" items="${item.subcats}" varStatus="st"><c:if test="${not st.first}">, </c:if>
<a href="node,${sc.key}" class="category"><am:caption item="${sc.captions}"/></a></c:forEach>
<c:if test="${user.auth}"><a href="item-edit,${item.key}" class="readon">Редагувати</a></c:if>
</div>
<div> <!-- publication categories -->
<div id="fb-root"></div>
<div class="fb-like" data-send="true" data-width="450" data-show-faces="true"></div>
<script>(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/uk_UA/all.js#xfbml=1&appId=505225196211196";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</div>
<div id="disqus_thread"></div>
<script type="text/javascript">
	/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
	var disqus_shortname = 'oranta'; // required: replace example with your forum shortname

	/* * * DON'T EDIT BELOW THIS LINE * * */
	(function() {
		var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	})();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
