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
						<td colspan=2 align=center  ><font size=4><b3>�q�����<b3></font><br>
						<font size=3><%=p.getDesk() %></font>
						<%=d1.getYear()+1900 %>�~
						<%=d1.getMonth()+1 %>��
						<%=d1.getDate() %>��
					<tr>
						<td colspan=2 >
					<tr>
						<td width=100 align=center>A�\
						<td><%=p.getPro1() %>��
					<tr>
						<td width=100 align=center>B�\
						<td><%=p.getPro2() %>��
					<tr>
						<td width=100 align=center>C�\
						<td><%=p.getPro3() %>��
					<tr>
						<td width=100 align=center>�@�@
						<td><%=p.getSum() %>��
					<tr>
						<td colspan=2 align=center>
						<a href="../index.jsp">�^����</a>&nbsp;&nbsp;&nbsp;
						<a href="javascript:window.print()" _fcksavedurl="javascript:window.print()">�C�L����</a><br/>
							
				</table>
		
		<tr>
			<td align=center ><jsp:include page="../footer.jsp"/>
			     <a href="../index.jsp"/>�^�W�@��
</table>
				
		<tr>
			<td>
</table>



</body>
</html>