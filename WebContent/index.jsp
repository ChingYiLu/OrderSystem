<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yummy Brunch</title>
</head>
<body>
<%
String[] x=request.getParameterValues("");

Date d1=new Date();

String date=(d1.getYear()+1900)+"年"+(d1.getMonth()+1)+"月"+d1.getDate()+"日";

application.setAttribute("DATE", date);


%>

<body background="addEX/pic/images.png">
	<table width=750 align=center border=3>
		<tr>
			<tr><td align=center  bgcolor=#AAFFEE>
			<jsp:include page="header.jsp"/>
		<img src="addEX/pic/yammy.png" >
		<tr>
			<td align=center>
			<table width=600 align=center >
			
			
				<tr>
					<td align=center ><a href="addEX/input.jsp">
					<font size=5><b>1)新增</b></font></a>
				<tr>
					<td align=center><a href="queryEX/query.jsp">
					<font size=5><b>2)查詢</b></font></a>
				<tr>
					<td align=center><a href="setEX/update.jsp">
					<font size=5><b>3)修改</b></font></a>
				<tr>
					<td align=center><a href="delEX/delID.jsp">
					<font size=5><b>4)刪除</b></font></a>
			
			</table>
			<marquee direction="right" height="30" scrollamount="5" behavior="alternate" color="#AFEEEE"><b>~~WELCOME TO YAMMY BRUNCH~~</b></marquee>
			
		<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="footer.jsp"/>
			&nbsp;&nbsp;&nbsp;&nbsp;<font>負責人:呂靜宜</font>
	
	</table>

</body>
</html>