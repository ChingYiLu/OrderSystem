<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Yummy Brunch</title>
</head>
<body>
<body background="pic/images.png">
	<table width=750 align=center border=3>
		<tr>
			<td align=center  bgcolor=#AAFFEE><jsp:include page="../header.jsp"/>
			
		<tr>
			<td align=center >
			
				<form method="post" action="../add">
				
					<table width=630 align="center" border=0 >
					
						<tr>
							<td colspan=3>
							�ู:
							<select name="desk">
								<option value="A��">A��
								<option value="B��">B��
								<option value="C��">C��
								<option value="D��">D��							
							</select>
						<tr>
							<td width=200 align=center>
							<img src="pic/bread.png"><br>
						   <b> A�\:40�� �ƶq:</b>
							<select name="pro1">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
								<option value="10">10
							</select>
							<td width=200 align=center>
							<img src="pic/egg.png"><br>
							<b>B�\:35��  �ƶq:</b>
							<select name="pro2">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
								<option value="10">10
							</select>
							
							<td width=200 align=center>
							<img src="pic/toast.png"><br>
							<b>C�\:40�� �ƶq:</b>
							<select name="pro3">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
								<option value="10">10
							</select>
						<tr>
							<td colspan=3 align=center >	
							<input type="submit" value="�T�w">				
					
					</table>				
				
				</form>
			
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			     <a href="../index.jsp"/>�^�W�@��
	
	
	</table>

</body>
</html>