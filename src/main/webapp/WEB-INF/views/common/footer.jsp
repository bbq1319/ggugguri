<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<footer>
	<div class="desc">
		<a href="servicerule.html">서비스 이용약관</a>
		<a href="datarule.html">개인정보취급방칙</a>
		<a href="business.html">제휴문의</a>
		<a href="errorreport.html">오류신고</a>
	</div>
	<div class="info">
		<p>Copyright GGUM. 2017-2019. All rights reserved.</p>
	</div>
</footer>

<script>
/* 
* params 
* 페이징태그 추가할 셀럭터, 전체 수, 현재페이지, 한 페이지에 출력될 게시물 수, 한 화면에 출력될 페이지 수
*/
function paging(selector, total_cnt, cur_page, count_list, count_page) {
	var total_page = Math.ceil(total_cnt / count_list); 
	var page_group = Math.ceil(cur_page / count_page);
	var last = page_group * count_page;
	if(last > total_page)
		last = total_page;
	var first = last - (count_page - 1);
	if(first < 0)
		first = 1;
	var next = cur_page + 1 > total_page? total_page: cur_page + 1;
	var prev = cur_page - 1 <= 0? 1: cur_page - 1;
	var front = 1;
	var rear = total_page;
	var cur_pathname = location.pathname;
	
	// 버튼 설정
	var page_number = "";
	page_number += "<div class='boardFoot'>";
	page_number += "	<div class='bottomRow'>";
	page_number += "		<div class='pagingBox'>";
	for(var i=first; i<=last; i++) {
		page_number += "		<a href='" + cur_pathname + "?page" + i + "' class='pagingNum'>" + i + "</a>"
	}
	page_number += "			<a href='#' class='pagingNum'>다음</a>";
	page_number += "		</div>";
	page_number += "	</div>";
	page_number += "</div>";
	selector.html(page_number);
	$(".pagenation").children(".active").removeClass();
	selector.find(".pagenation_"+cur_page).addClass("active");
}

function getDateTime(unix_time) {
	var date = new Date(unix_time);
	
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	var day = date.getDate();
	if(month < 10)
        month = "0"+month;
    if(day < 10)
        day = "0"+day;

	var hour = date.getHours();
	var minute = date.getMinutes();
	var seconds = date.getSeconds();
	
	return year + "." + month + "." + day + " " +
		hour + ":" + minute + ":" + seconds
}
</script>