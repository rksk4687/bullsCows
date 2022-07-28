<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Signin</title>
<style>
h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h1>SIGNIN</h1>
	<Form action="/signin" method="post">
		<div style="border: 3px solid" align="center">
			<h3>ID</h3>
			<input type="text" name="userid" placeholder="ID 를 입력해주세요.">
			<h3>PASSWORD</h3>
			<input type="password" name="password"> <br /> <br /> <input
				type="submit" value="Signin"> 
				<input type="button" value="Signup" onclick="location.href='/signup'"> <br /> <br />

		</div>
	</Form>
</body>
</html>