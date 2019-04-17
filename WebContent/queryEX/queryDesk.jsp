<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.porder"
    import="java.sql.*"%>
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
		<td>					
		<form method="post"action="queryDesk.jsp"/>
			<table width=500 align=center border=1>
			
			<tr>
						<td align=center>查詢區 桌號:
							<select name="desk">
								<option value="A桌">A桌
								<option value="B桌">B桌
								<option value="C桌">C桌
								<option value="D桌">D桌							
							</select>
						<input type="submit" value="確定">
			
			
			</table>
									
		</form>
			<hr>
		<%
		
		request.setCharacterEncoding("big5");
		
		String DESK=request.getParameter("desk");
		
		ResultSet rs=porder.queryDesk(DESK)	;
		
		
		out.println("<table align=center width=500>");
		out.println("<tr bgcolor=hotpink>"+
				"<td align=center>ID"+
				"<td align=center>Desk"+
				"<td align=center>A餐"+
				"<td align=center>B餐"+
				"<td align=center>C餐"+
				"<td align=center>金額");
		while(rs.next())
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
	
		
		
		%>
			




	<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../footer.jsp"/>
			<a href="query.jsp">上一頁</a>


</body>
</html>