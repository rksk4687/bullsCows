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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<h1>SIGNUP</h1>
	<div style="border: 3px solid" align="center">
		<h3>ID</h3>
		<input type="text" class="su-inputs" name="userid" placeholder="ID �� �Է����ּ���." required>
		<h3>PASSWORD</h3>
		<input type="password" class="su-inputs" name="password" value="" required>
		<br /> <input type="button" class="join_submit" value="Signup">  <br />
		<br />

	</div>
	<!-- <h1>SIGNUP</h1>
	<div style="border: 3px solid" align="center">
		<h3>ID</h3>
		<input type="text" value="ID �� �Է����ּ���.">
		<h3>PASSWORD</h3>
		<input type="password" value="">
		<h3>PASSWORD CHECK</h3>
		<input type="password" value=""> <br />
		<br /> <input type="button" value="Signup"
			onclick="location.href='signin'">  <br />
		<br />

	</div> -->
</body>
<script type="text/javascript">
	const signupInputs = document.querySelectorAll('.su-inputs');
	const joinSubmit = document.querySelector('.join_submit');
	
	var isValidUsername = 'true';
	var signupFlag = 'false';
	
	function signup() { // ȸ������ ajax�� ���� ������ ����
		let signupObj = {
			userid: signupInputs[0].value,
			password: signupInputs[1].value
		};

		$.ajax({
			type: "POST",
			url: "/signup",
			data: signupObj,
			dataType: "text",
			async: false,
			success: function(data) {
				signupFlag = data;
			},
			error: function() {
				alert('�񵿱� ó�� ����');
			}
		})

		if (signupFlag == 'false') {
			alert('ȸ������ ����');
		} else {
			alert('ȸ������ ����');
			location.href = "/signin";
		}
	}

	joinSubmit.onclick = () => {
		signup();
	}
</script>
</html>