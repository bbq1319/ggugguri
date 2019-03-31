<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>GGUM: </title>
		<%@ include file="/WEB-INF/views/common/common.jsp"%>
	</head>
	<body>
	<div class="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>

		<input type="text" readonly="" id="lotto_text">
		<input type="button" value="로또번호생성" onclick="Lotto()">
		
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
	</body>

	<script>
		function Lotto() {
	        var lotto = new Array(6); // 6개의 배열이 lotto에 저장
	        var count = 0; //추출한 로또번호의 갯수
	        var overl = true; // 번호중복 여부 변수
	 
	        while (count < 6) { // 로또번호 6번 얻을 때까지 반복.
	            var number = 0; //랜덤번호 가져오는 변수
	            number = parseInt(Math.random() * 45) + 1; // 1~45사이에 랜덤번호 추출
	 
	            for (var i = 0; i < count; i++) { // 1부터 i까지 반복하여 중복확인
	                if (lotto[i] == number) { // 중복된 번호가 아니면 넘어가기.
	                    overl = false;
	                }
	            }
	 
	            if (overl) { //중복 없을 시 count 1 증가
	                lotto[count] = number; //추출된 번호를 배열에 넣기
	                count++;
	            }
	 
	            overl = true; //원래 true으로 돌아가기
	        }
	        var lotto_text = document.getElementById("lotto_text"); //입력폼 id 가져오기
	 
	        // 추첨된 로또번호 출력
	        lotto_text.value = lotto[0] + ', ' + lotto[1] + ', ' + lotto[2] + ', ' +
	                lotto[3] + ', ' + lotto[4] + ', ' + lotto[5];
	    }
	</script>
</html>
