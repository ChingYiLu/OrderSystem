<%@ 
page language="java" contentType="text/html; charset=BIG5"
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
		<td>					
		<form method="post"action="queryID.jsp"/>
			<table width=500 align=center border=1>
			
			<tr>
					<td align=center>�п�J�渹
					<input type="text" name="id">
					<input type="submit" value="�T�w">
																																					
				</table>
									
		</form>
			<hr>
					    
				    	    					   					   								
			<%
			try
			{
				int ID=Integer.parseInt(request.getParameter("id"));
				ResultSet rs=porder.queryID(ID);
				out.println("<table align=center width=300 border=0>");
			
			while(rs.next())
			{
				out.println("<tr bgcolor=#CCCCFF><td align=center colspan=2>�q��s��:"+rs.getInt("id")+
						"<tr><td colspan=2><hr>"+
						"<tr><td align=center width=100>�ู"+"<td>"+rs.getString("desk")+
						"<tr><td align=center width=100>���\"+"<td>"+rs.getInt("pro1")+
						"<tr><td align=center width=100>���\"+"<td>"+rs.getInt("pro2")+
						"<tr><td align=center width=100>���\"+"<td>"+rs.getInt("pro3")+
						"<tr><td colspan=2><hr>"+
						"<tr><td align=center width=100>���B"+"<td>"+rs.getInt("sum")+
						"<tr><td colspan=2><hr>");
			}
			
			out.println("</table>");
			
			}
			catch(NumberFormatException  e)
			{
				out.println("<h1>~�п�J�n�d�ߪ��渹~<h1>");
			}
		
			
			
			%>
			
			
			<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../footer.jsp"/>
			<a href="query.jsp">�W�@��</a>
			

</body>
</html>