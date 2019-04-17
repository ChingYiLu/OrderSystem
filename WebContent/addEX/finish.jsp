<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.porder"
    import="java.util.Date"
    
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Yummy Brunch</title>
</head>

<%
porder p=(porder)session.getAttribute("P");
p.add();

Date d1=new Date();
%>
<body>
<body background="../addEX/pic/images.png">

<table width=800 align=center border=3>	
		<tr>
			<td>
				<table width=350 align=center border=0 >
					<tr>
						<td colspan=2><hr><jsp:include page="../header.jsp"/>
						<hr>
					<tr>
						<td colspan=2 align=center  ><font size=4><b3>訂單明細<b3></font><br>
						<font size=3><%=p.getDesk() %></font>
						<%=d1.getYear()+1900 %>年
						<%=d1.getMonth()+1 %>月
						<%=d1.getDate() %>日
					<tr>
						<td colspan=2 >
					<tr>
						<td width=100 align=center>A餐
						<td><%=p.getPro1() %>份
					<tr>
						<td width=100 align=center>B餐
						<td><%=p.getPro2() %>份
					<tr>
						<td width=100 align=center>C餐
						<td><%=p.getPro3() %>份
					<tr>
						<td width=100 align=center>一共
						<td><%=p.getSum() %>元
					<tr>
						<td colspan=2 align=center>
						<a href="../index.jsp">回首頁</a>&nbsp;&nbsp;&nbsp;
						<a href="javascript:window.print()" _fcksavedurl="javascript:window.print()">列印本頁</a><br/>
							
				</table>
		
		<tr>
			<td align=center ><jsp:include page="../footer.jsp"/>
			     <a href="../index.jsp"/>回上一頁
</table>
				
		<tr>
			<td>
</table>



</body>
</html>