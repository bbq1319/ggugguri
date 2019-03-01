<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>자유게시판</title>
		<%@ include file="/WEB-INF/views/common/common.jsp"%>
	</head>
	<body>
		<div class="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="container">
			<div class="board">
				<h2>자유게시판</h2>
				<table class="table">
					<thead>
						<th>제목</th>
						<th>작성</th>
						<th>조회</th>
						<th>추천</th>
						<th>날짜</th>
					</thead>
					
					<tbody id="tbody">
					</tbody>
				</table>
				<div class="contentsWrap">
					<div class="content" id="recent">
					</div>
				</div>
			</div>
		</div> 
		
		<div id="pagenation" class="pagenation">
		</div>
		
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</body>

	<script>
		var cur_href = location.href;
		var cur_page = 0;
		var count_list = 10
		var count_page = 10;

		if(cur_href.includes('page')) {
			cur_page = (cur_href.split('page')[1]-1) * count_list;
		}
		
		var param = {
			url: "/board/getFreeBoardList.json",
			data: {
				start: cur_page,
				limit: count_list
			}
		};
		
		$.fnUtil.ajax(param, function(obj) {
			console.log(obj.data);
			var html_recent = "";
			obj.data.freeBoardRecent.forEach(function(value, arr) {
				html_recent += 
					'<tr>' +
					'	<td>' + value.TITLE + '</td>' +
					'	<td>' + value.REGISTER + '</td>' +
					'	<td>' + value.HITS + '</td>' +
					'	<td>' + value.VOTE + '</td>' +
					'	<td>' + getDateTime(value.REGDATE) + '</td>' +
					'</tr>'
			});
			$("#tbody").empty();		
			$("#tbody").prepend(html_recent);
			
			var total_cnt = obj.data.freeBoardRecentCnt.cnt;
			paging($("#pagenation"), total_cnt, 1, count_list, count_page);
		}) 
		
	</script>
</html>
