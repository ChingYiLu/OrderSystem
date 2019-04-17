<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.porder"
    import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Yummy Brunch</title>
</head>
<body>
<body background="../addEX/pic/images.png">
<table width=600 align=center border>
		<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../header.jsp"/>
			
		<tr>
			<td>
				<form method="post" action="delID.jsp">
				<table width=400 align=center>
					<tr>
						<td align=center>刪除區 輸入
						ID<input type="text" name="id" size=3>
						
						<input type="submit" value="ok">					
				</table>
				</form>
				<hr>
				<table width=400 align=center>
					<tr>
						<td align=center>
						<%
						try
						{
						request.setCharacterEncoding("big5");
						int ID=Integer.parseInt(request.getParameter("id"));
						
						porder.deleid(ID);
						
						}
						catch(NumberFormatException e)
						{
							
						}
						
						finally
						{
							ResultSet rs=porder.queryAll();
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
								out.println("<tr bgcolor=#CCCFF>"+
										"<td align=center>"+rs.getInt("id")+
										"<td align=center>"+rs.getString("desk")+
										"<td align=center>"+rs.getInt("pro1")+
										"<td align=center>"+rs.getInt("pro2")+
										"<td align=center>"+rs.getInt("pro3")+
										"<td align=center>"+rs.getInt("sum"));
							}
							
							out.println("</table>");
						}
						
						%>
						
						
				
				</table>
				
		<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../footer.jsp"/>
			<a href="update.jsp">上一頁</a>&nbsp;&nbsp;&nbsp;<a href="../index.jsp">home</a>
	
	</table> 
					 


</body>
</html>