<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.porder"
    import="java.sql.*"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Yummy Brunch</title>
</head>

<%


%>



<body>
<body background="../addEX/pic/images.png">
<table width=750 align=center border=1>

	<tr>
		<td align=center bgcolor=#AAFFEE><jsp:include page="../header.jsp"/>
	<tr>
		<td>									
				<% 
				ResultSet rs=porder.queryAll();
				out.println("<table align=center width=500>");
				out.println("<tr bgcolor=hotpink>"+
						"<td align=center>ID"+
						"<td align=center>Desk"+
						"<td align=center>A餐"+
						"<td align=center>B餐"+
						"<td align=center>C餐"+
						"<td align=center>金額");
				
				
				int sum=0;
				int count=0;
				
				while (rs.next())
				{
					int x=rs.getInt("sum");
				
					out.println("<tr bgcolor=#CCCCFF>"+
							"<td align=center>"+rs.getInt("id")+
							"<td align=center>"+rs.getString("desk")+
							"<td align=center>"+rs.getInt("pro1")+
							"<td align=center>"+rs.getInt("pro2")+
							"<td align=center>"+rs.getInt("pro3")+
							"<td align=center>"+x);
					
                    sum=sum+x;	
					
					count++;
				}
				out.println("<tr><td colspan=6>共:"+count+"筆,訂單總金額:"+sum+"元");
				out.println("</table>");
				%>

<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../footer.jsp"/>
			<a href="query.jsp">上一頁</a>


</body>
</html>