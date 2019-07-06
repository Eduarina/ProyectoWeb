<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/nuevos.css">
	<script type="text/javascript">
		function startTime(){
		today=new Date();
		h=today.getHours();
		m=today.getMinutes();
		s=today.getSeconds();
		m=checkTime(m);
		s=checkTime(s);
		document.getElementById('reloj').innerHTML=h+":"+m+":"+s;
		t=setTimeout('startTime()',500);}
		function checkTime(i)
		{if (i<10) {i="0" + i;}return i;}
		window.onload=function(){startTime();}
	</script>
</head>
<body >
    <jsp:include page="menu.jsp"></jsp:include>
    <div id="reloj"></div> 
</body>
</html>