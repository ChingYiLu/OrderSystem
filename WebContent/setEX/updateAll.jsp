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
				<form method="post" action="updateAll.jsp">
				<table width=500 align=center>
					<tr>
						<td align=center>修改區 輸入
						ID<input type="text" name="id" size=3>
						桌號<select name="desk">
								<option value="A桌">A桌
								<option value="B桌">B桌
								<option value="C桌">C桌
								<option value="D桌">D桌							
							</select>
						A餐<input type="text" name="pro1" size=3>
						B餐<input type="text" name="pro2" size=3>
						C餐<input type="text" name="pro3" size=3>
					 <input type="submit" value="ok">
					 </table>
					 </form>
					 <hr>
					<table width=400 align=center>
					<tr>
						<td align=center>
						
						<%
						request.setCharacterEncoding("big5");
						
						try
						{
						int ID=Integer.parseInt(request.getParameter("id"));
						String DESK=request.getParameter("desk");
						int PRO1=Integer.parseInt(request.getParameter("pro1"));
						int PRO2=Integer.parseInt(request.getParameter("pro2"));
						int PRO3=Integer.parseInt(request.getParameter("pro3"));
						
						
						porder p=new porder(DESK,PRO1,PRO2,PRO3);
						
						porder.updateAll(ID, p.getDesk(), p.getPro1(), p.getPro2(), p.getPro3(), p.getSum());
						
						
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
						
						%>
					</table>
				
		<tr>
			<td align=center bgcolor=#AAFFEE><jsp:include page="../footer.jsp"/>
			<a href="update.jsp">上一頁</a>&nbsp;&nbsp;&nbsp;<a href="../index.jsp">home</a>
	
	</table>		
					 
					 


</body>
</html>