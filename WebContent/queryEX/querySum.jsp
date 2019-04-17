<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.porder"
    import="java.sql.ResultSet"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Yummy Brunch</title>
</head>
<body>
<body background="../addEX/pic/images.png">

<table width=750 align=center border=1>

	<tr>
		<td align=center bgcolor=#AAFFEE><jsp:include page="../header.jsp"/>
	<tr>
		<td align=center>					
		<form method="post"action="querySum.jsp"/>
			<table width=500 align=center border=1>
			
			<tr>
				<td align=center>
				查詢區
				輸入金額從
				<input type="text" name="start"size=5>
				到
				<input type="text" name="end"size=5>
				<input type="submit" value="ok">												
			</table>
															
		</form>
		
		<hr>
		<%
		
		try{
		
		int START=Integer.parseInt(request.getParameter("start"));
		int END=Integer.parseInt(request.getParameter("end"));
		
		ResultSet rs=porder.querySum(START,END);
		out.println("<table align=center width=500>");
		out.println("<tr bgcolor=hotpink>"+
				"<td align=center>ID"+
				"<td align=center>Desk"+
				"<td align=center>A餐"+
				"<td align=center>B餐"+
				"<td align=center>C餐"+
				"<td align=center>金額");
		
		
		while (rs.next())
		{
		
			out.println("<tr bgcolor=#CCCCFF>"+
					"<td align=center>"+rs.getInt("id")+
					"<td align=center>"+rs.getString("desk")+
					"<td align=center>"+rs.getInt("pro1")+
					"<td align=center>"+rs.getInt("pro2")+
					"<td align=center>"+rs.getInt("pro3")+
					"<td align=center>"+rs.getInt("sum"));
			
		
		}
		out.println("</table>");
		
		
		
		
		}
		catch(NumberFormatException e)
		{
			
			out.println("<h1>~~請輸入要查詢的金額~~<h1>");
			
		}
		
		%>
		
		
		
		
		<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../footer.jsp"/>
			<a href="query.jsp">上一頁</a>

</body>
</html>