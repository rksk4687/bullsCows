<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h1>SIGNUP</h1>
	<Form action="/signup" method="post">
	<div style="border: 3px solid" align="center">
		<h3>ID</h3>
		<input type="text" value="ID 를 입력해주세요.">
		<h3>PASSWORD</h3>
		<input type="password" value="">
		<h3>PASSWORD CHECK</h3>
		<input type="password" value=""> <br />
		<br /> <input type="button" value="Signup"
			onclick="location.href='signin'">  <br />
		<br />

	</div>
	</Form>
	<!-- <h1>SIGNUP</h1>
	<div style="border: 3px solid" align="center">
		<h3>ID</h3>
		<input type="text" value="ID 를 입력해주세요.">
		<h3>PASSWORD</h3>
		<input type="password" value="">
		<h3>PASSWORD CHECK</h3>
		<input type="password" value=""> <br />
		<br /> <input type="button" value="Signup"
			onclick="location.href='signin'">  <br />
		<br />

	</div> -->
</body>
</html>