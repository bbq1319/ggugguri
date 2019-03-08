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
			비밀번호 : <input type="password" name="password" placeholder="6글자 이상으로 입력해주세요"><br>
			비밀번호 확인 : <input type="password" name="password_check" placeholder="비밀번호를 다시 한번 입력해주세요"><br>
			닉네임 : <input type="text" name="nicknm" placeholder="4글자 이상으로 입력해주세요">
					<input type="button" name="nicknm_check" value="중복확인" onclick="check_nicknm()"><br>
			이름 : <input type="text" name="name"><br>
			성별 : 
			<select id="sex" name="sex">
				<option value="" selected="selected">성별을 선택하세요</option>
				<option value="M">남자</option>
				<option value="F">여자</option>
			</select><br>
			이메일 : <input type="text" name="email">@ggu.ac.kr<br>
			생일 : <input type="text" name="birth" placeholder="4글자 이상으로 입력해주세요"><br>
			전공 : 
			<select id="major" name="major">
				<option value="" selected="selected">전공을 선택하세요</option>
				<option value="B">불교학과</option>
				<option value="AB">응용불교학과</option>
				<option value="A">행정학과</option>
				<option value="SW">사회복지학과</option>
				<option value="BA">IT경영학과</option>
				<option value="IT">IT소프트웨어학과</option>
				<option value="G">글로벌지역통상학과</option>
			</select><br>
			부전공 : 
			<select id="majo2r" name="major2">
				<option value="" selected="selected">전공을 선택하세요</option>
				<option value="B">불교학과</option>
				<option value="AB">응용불교학과</option>
				<option value="A">행정학과</option>
				<option value="SW">사회복지학과</option>
				<option value="BA">IT경영학과</option>
				<option value="IT">IT소프트웨어학과</option>
				<option value="G">글로벌지역통상학과</option>
			</select><br>
			학번 : <input type="text" name="stuno"><br>
			<input type="button" name="nick_check" value="가입" onclick="add_member()">
			<input type="button" name="nick_check" value="취소" onclick="location.replace('/member/login')">
		</form>
	</body>

	<script>
		function add_member() {
			var param = {
				url: "/member/addMember.json",
				data: $("#fm").serialize()
			}
			
			$.fnUtil.ajax(param, function(obj) {
				console.log(obj);
			});
		}
	
		function check_id() {
			
		}
	</script>
</html>
