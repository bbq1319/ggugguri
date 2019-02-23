<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
		<%@ include file="/WEB-INF/views/common/common.jsp"%>
	</head>

	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
	
		<div>
			<!-- 주간 BEST -->
			<div id="best">
			</div>
			
			<!--  -->
			<div id="recent">
			</div>		
			
			<!-- 공지사항 -->
			<div id="notice">
				<p>공지사항</p>
			</div>
		</div>
		
	</body>

	<script>
		var param = {
			url: "/board/getFreeBoardList.json",
			data: {
				start: 0,
				limit: 4
			}
		};
		
		$.fnUtil.ajax(param, function(obj) {
			var html_best = "<p>주간 BEST</p>";
			obj.data.freeBoardBest.forEach(function(value, arr) {
				html_best += 
					'<p>' + (arr+1) + ' ' + value.TITLE + '</p>'					
			});
			$("#best").empty();		
			$("#best").prepend(html_best);
			
			var html_recent = "<p>최신글</p>";
			obj.data.freeBoardRecent.forEach(function(value, arr) {
				html_recent += 
					'<p>' + (arr+1) + ' ' + value.TITLE + '</p>'
			});
			$("#recent").empty();		
			$("#recent").prepend(html_recent);
		}) 
	</script>
</html>
