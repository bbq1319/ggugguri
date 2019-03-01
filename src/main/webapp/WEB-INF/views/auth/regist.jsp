<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>REGIST</title>
		<%@ include file="/WEB-INF/views/common/common.jsp"%>
	</head>

	<body>
		<form id="fm">
			아이디 : <input type="text" name="id" placeholder="4글자 이상으로 입력해주세요">
					<input type="button" value="중복체크" onclick="check_id()"><br>
			비밀번호 : <input type="password" name="password" placeholder="4글자 이상으로 입력해주세요"><br>
			비밀번호 확인 : <input type="password" name="password_check" placeholder="4글자 이상으로 입력해주세요"><br>
			닉네임 : <input type="text" name="nick" placeholder="4글자 이상으로 입력해주세요">
					<input type="button" name="nick_check" value="중복확인" onclick="check_nicknm()"><br>
			이름 : <input type="text" name="name" placeholder="4글자 이상으로 입력해주세요"><br>
			성별 : <input type="text" name="sex" placeholder="4글자 이상으로 입력해주세요"><br>
			생일 : <input type="text" name="birth" placeholder="4글자 이상으로 입력해주세요"><br>
			전공 : <input type="text" name="major" placeholder="4글자 이상으로 입력해주세요"><br>
			학번 : <input type="text" name="stu_no" placeholder="4글자 이상으로 입력해주세요"><br>
			<input type="button" name="nick_check" value="가입" onclick="location.replace('/home')">
			<input type="button" name="nick_check" value="취소" onclick="location.replace('/member/login')">
		</form>
	</body>

	<script>
		function check_id() {
			
		}
	</script>
</html>
