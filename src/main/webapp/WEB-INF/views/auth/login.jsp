<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>LOGIN</title>
		<%@ include file="/WEB-INF/views/common/common.jsp"%>
	</head>

	<body>
		<form id="fm">
			아이디 : <input type="text" name="id"><br>
			비밀번호 : <input type="password" name="password"><br>
			<input type="button" name="nick_check" value="로그인" onclick="do_login()">
			<input type="button" name="nick_check" value="회원가입" onclick="location.href='/member/regist'">
		</form>
	</body>

	<script>
		function do_login() {
			var param = {
				url: "/member/doLogin.json",
				data: $("#fm").serialize()
			}
			
			$.fnUtil.ajax(param, function(obj) {
				if(obj.data.RESULT_CODE == 0) {
					alert("로그인 성공!!");
					location.replace('/home'); 
				} 
				else {
					alert("로그인 실패!!");
				}
			});
		}
	</script>
</html>
