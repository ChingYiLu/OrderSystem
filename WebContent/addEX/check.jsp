<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Yummy Brunch</title>
</head>
<body>
<body background="pic/images.png">
<table width=700 align=center border=3 >
	<tr>
		<td colspan=2 align=center font size=5 bgcolor=hotpink>�q��ӥ�
	<tr>
		<td>
			<table width=300 align=center border=1>
				<tr>
					<td colspan=2 border=2 >
					<table width=200 align=center >	
						
						<tr>
							<td colspan=2 align=center border=1 >${P.getDesk()}�ู
						<tr>
							<td colspan=2 border=1 ><hr>
						<tr>
							<td width=50 align=center >A�\:
							<td>${P.getPro1() }��
						<tr>
							<td width=50 align=center >B�\:
							<td>${P.getPro2() }��
						<tr>
							<td width=50 align=center>C�\:
							<td>${P.getPro3() }��
						<tr>
							<td width=50>�@�@
							<td>${P.getSum() }��
						<tr>
							<td colspan=2 align=center>
							<a href="input.jsp">����</a>
							<a href="finish.jsp">�T�w</a>	
				</table>
					</table>	
				
					
</body>
</html>