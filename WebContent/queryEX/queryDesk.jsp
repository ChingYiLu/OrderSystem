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
						<td align=center>�d�߰� �ู:
							<select name="desk">
								<option value="A��">A��
								<option value="B��">B��
								<option value="C��">C��
								<option value="D��">D��							
							</select>
						<input type="submit" value="�T�w">
			
			
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
				"<td align=center>A�\"+
				"<td align=center>B�\"+
				"<td align=center>C�\"+
				"<td align=center>���B");
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
			<a href="query.jsp">�W�@��</a>


</body>
</html>