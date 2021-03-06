<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="am" uri="/WEB-INF/gushuley-portal.tld" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<fmt:setLocale value="${lang.locale}" scope="request"/>	 
<html> 
<head> 
	<title>${mainTitle}</title> 
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
	<c:if test="${portalRssLink != nul}">
		<link rel=”alternate” type=”application/rss+xml” title=”Підписка на RSS-новини” href=”./${portalRssLink}” >
	</c:if> 
	<link rel="stylesheet" type="text/css" href="../css/template.css"> 
	<link rel="stylesheet" type="text/css" href="../css/chromestyle.css"> 
	<link rel="stylesheet" type="text/css" href="../css/paginator3000.css" />
	<link rel="stylesheet" href="../css/jquery.fancybox-1.2.1.css" type="text/css" media="screen">
	<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
	<script type="text/javascript" src="../js/chrome.js"></script>
	<script type="text/javascript" src="../js/paginator3000.js"></script>
	<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="../js/jquery.fancybox-1.2.1.js"></script>
	<script type="text/javascript">
	<!-- //Fancy box apply
		$.fn.fancybox.defaults = {
			imageScale			:	true,
			zoomOpacity			:	false,
			zoomSpeedIn			:	0,
			zoomSpeedOut		:	0,
			zoomSpeedChange		:	300,
			easingIn			:	'swing',
			easingOut			:	'swing',
			easingChange		:	'swing',
			overlayShow			:	true,
			overlayOpacity		:	0.3,
			hideOnContentClick	:	true,
			centerOnScroll		:	true,
			itemArray			:	[]
		};
		$(document).ready(function() {
			$("a#group").fancybox();
		});
	-->
	</script>
</head> 
<body> 
	<div id="gordi"> 
	    <div id="main"> 
	        <div class="header"></div> 
			<div class="menu_prepare"></div>	
			<div class="wrap"> 
			    <div id="content"> 
					<c:if test="${!am:isEmpty(mainPlugin)}">
						<am:plugin name="${mainPlugin}" 
							var1="${var1}" var2="${var2}" var3="${var3}" var4="${var4}" var5="${var5}"/>
					</c:if>
				</div> 
				<!-- div id content --> 
		 
				<div class="left">
					<am:plugin name="last-subcat-pub" var1="50"/> 
					<am:plugin name="node-head" var1="51"/>
					<div class="column_text" style="color:#E56E0D;">
						<p style="text-align: center">
						<a href="register">Реєстрація бажаючих отримувати найважливішу інформацію від нашої церкви</a></p> 
					</div>
					<h1><a href="needs-in-help">Потребую допомоги</a></h1> 
					<c:if test="${requestScope['com.gushuley.portal.CurrentLogin'].auth}">
						<a href="logout">Logout</a> :: <a href="item-edit">Write</a>
					</c:if>
							 
		 		</div> 
				<!-- div class left -->				
			</div> 
			<!-- div class wrap -->	
	    	<div class="right" > 
				<a href="needs-in-pray"><img src="../images/molytva.jpg" border="0" alt="Потреба в молитві"></a> 	
				<am:plugin name="efficiency" var1="11"/>
				<am:plugin name="node-link" var1="1458"/>
				<am:plugin name="node-link" var1="1456"/>
				<h1><a>Знайдіть нас у Facebook</a></h1>
				<div class="column_text" style="color:#E56E0D;">
					<div id="fb-root"></div>
					<script>(function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (d.getElementById(id)) return;
						js = d.createElement(s); js.id = id;
						js.src = "//connect.facebook.net/uk_UA/all.js#xfbml=1&appId=505225196211196";
						fjs.parentNode.insertBefore(js, fjs);
					}(document, 'script', 'facebook-jssdk'));</script>
					<div class="fb-like-box" data-href="http://www.facebook.com/AskoldovaMohyla" data-width="224" data-height="315" data-show-faces="true" data-stream="false" data-header="false"></div>
				</div>
				<am:plugin name="node-link" var1="1457"/>
			</div> 
			<!-- div class right --> 
			<div id="sub_footer"> 
				<a href=".">На головну</a> 
				<a href="javascript:history.back()">Повернутись назад</a> 
				<a href="mailto:askoldova@ukr.net">Написати листа</a> 
			</div> 
			<!-- div id sub_footer --> 
		    <div class="clear"></div> 			 				    
		</div> 
		<!-- div id main --> 
		<div id="footer"> 
			Парафія Церкви Миколая Чудотворця на Аскольдовій Могилі - <a href="mailto:oranta-gazeta@ukr.net">oranta-gazeta@ukr.net</a> 
		</div> 
	    <!-- div id footer --> 
		<div id="header"> 
			<div id="header_left"> 
				<div class="hdr_txt">${mainTime}</div>
			</div> 
			
			<div id="header_right"> 
				<div class="hdr_txt">
					<c:if test="${portalRssLink != nul}">
						<a href="./${portalRssLink}" title="Підписка на RSS-новини"><img src="../images/rss.png" style="vertical-align: text-top"/></a>
					</c:if> 
					&nbsp; 
					<a href="#">Додати в закладки</a> |
					<a href="#">Зробити стартовою</a> 
					
					<am:plugin name="langs"/>			
				</div> 
			</div> 
 
			<div id="search_bar">
				<form action="http://www.google.com/search" target="_blank"> 
					<input type="text" value="" id="search_input" name="q"> 
					<input type="hidden" value="site:askoldova-mohyla.org" name="q"> 
					<button type="submit" id="search_button"><img src="../images/search.jpg" alt="шукати"></button> 
				</form> 
			</div>		
		</div> 
		<!-- div id header --> 
	    <div id="menu">
	    	<am:plugin name="menu"/>
		</div>
		<!-- div id menu --> 
	  
	</div> 
	<!-- div id gordi -->
	<!-- euromaidan -->
	<a href="http://stfalcon.github.io/euromaidan/" class="em-ribbon" style="position: absolute; left:0; top:0; width: 90px; height: 90px; background: url('http://stfalcon.github.io/euromaidan/img/em-ribbon.png'); z-index: 2013; border: 0;" title="Розмісти стрічку з символікою України і ЄС на своєму сайті!" target="_blank"></a>
	<!-- euromaidan -->
	<c:if test="${not requestScope['com.gushuley.portal.CurrentLogin'].auth}">
		<!--  google analytics -->
		<script type="text/javascript">
			var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
			document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
			</script>
			<script type="text/javascript">
			var pageTracker = _gat._getTracker("UA-4235298-3");
			pageTracker._trackPageview();
		</script> 	 
		<!-- YaMetrics begin -->
		<script type="text/javascript"><!--
		var ya_cid=163976;
		//--></script>
		<script src="http://bs.yandex.ru/resource/watch.js" type="text/javascript"></script>
		<noscript><div style="display: inline;"><img src="http://bs.yandex.ru/watch/163976" width="1" height="1" alt="" /></div></noscript>
		<!-- YaMetrics end -->
	</c:if>
</body> 
</html>
