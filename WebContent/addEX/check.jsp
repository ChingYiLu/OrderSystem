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
		<td colspan=2 align=center font size=5 bgcolor=hotpink>訂單細目
	<tr>
		<td>
			<table width=300 align=center border=1>
				<tr>
					<td colspan=2 border=2 >
					<table width=200 align=center >	
						
						<tr>
							<td colspan=2 align=center border=1 >${P.getDesk()}桌號
						<tr>
							<td colspan=2 border=1 ><hr>
						<tr>
							<td width=50 align=center >A餐:
							<td>${P.getPro1() }份
						<tr>
							<td width=50 align=center >B餐:
							<td>${P.getPro2() }份
						<tr>
							<td width=50 align=center>C餐:
							<td>${P.getPro3() }份
						<tr>
							<td width=50>一共
							<td>${P.getSum() }元
						<tr>
							<td colspan=2 align=center>
							<a href="input.jsp">重填</a>
							<a href="finish.jsp">確定</a>	
				</table>
					</table>	
				
					
</body>
</html>