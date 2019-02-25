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
		<div class="wrap">
			<div class="middle">
				<div class="container">
					<div class="longBanner">
						<img src="/img/longBanner.png" width="1080px" height="120px">
					</div>				
					<div class="row">
						<div class="box">
							<h3>주간BEST</h3>
							<div class="contentsWrap">
								<div class="content" id="best">
								</div>
							</div>
						</div>
						<div class="box">
							<h3>최신글</h3>
							<div class="contentsWrap">
								<div class="content" id="recent">
								</div>
							</div>
						</div>
						<div class="box">
							<h3>공지사항</h3>
							<div class="contentsWrap">
								<div class="content" id="notice">
									<a href="#">Lorem Ipusm is Simply</a>
									<a href="#">Lorem Ipusm is Simply</a>
									<a href="#">Lorem Ipusm is Simply</a>
									<a href="#">Lorem Ipusm is Simply</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="miniBanner">
							<a href="#">
								<img src="/img/miniBanner.png" width="330px" height="120px">
							</a>
						</div>
						<div class="miniBanner">
							<a href="#">
								<img src="/img/miniBanner.png" width="330px" height="120px">
							</a>
						</div>
						<div class="miniBanner">
							<a href="#">
								<img src="/img/miniBanner.png" width="330px" height="120px">
							</a>
						</div>
					</div>
	
					<diV class="cast">
						<h3>GGU 캐스트</h3>
						<div class="castContentsWrap">
							<div class="castContent">
								<a href="#">
									<div class="castThumbnail">
										<img src="/img/thumbnail.png">
									</div>
									<div>
										<strong><p>Cast Content Title</p></strong>
									</div>
								</a>
							</div>
							<div class="castContent">
								<a href="#">
									<div class="castThumbnail">
										<img src="/img/thumbnail.png">
									</div>
									<div>
										<strong><p>Cast Content Title</p></strong>
									</div>
								</a>
							</div>
							<div class="castContent">
								<a href="#">
									<div class="castThumbnail">
										<img src="/img/thumbnail.png">
									</div>
									<div>
										<strong><p>Cast Content Title</p></strong>
									</div>
								</a>
							</div>
						</div>
					</diV>
				</div>
			</div>
			<footer>
				<div class="desc">
					<a href="#">서비스 이용약관</a>
					<a href="#">개인정보취급방칙</a>
					<a href="#">제휴문의</a>
					<a href="#">오류신고</a>
				</div>
				<div class="info">
					<p>Copyright GGUM. 2017-2019. All rights reserved.</p>
				</div>
			</footer>
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
			var html_best = "";
			obj.data.freeBoardBest.forEach(function(value, arr) {
				html_best += 
					'<a href="#">' + (arr+1) + '. ' + value.TITLE + '</a>'					
			});
			$("#best").empty();		
			$("#best").prepend(html_best);
			
			var html_recent = "";
			obj.data.freeBoardRecent.forEach(function(value, arr) {
				html_recent += 
					'<a href="#">' + (arr+1) + '. ' + value.TITLE + '</a>'
			});
			$("#recent").empty();		
			$("#recent").prepend(html_recent);
		}) 
	</script>
</html>
