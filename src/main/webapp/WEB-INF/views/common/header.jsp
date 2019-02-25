<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<header>
	<c:set var="id" value="${user_id }" />
	<c:set var="url" value='${requestScope["javax.servlet.forward.request_uri"]}' />

	<header>
		<div class="area">
			<div class="logo">
				<a href="/home"><img src="/img/logo.png"></a>
			</div>
			<div class="login">
				<c:choose>
					<c:when test="${empty user_id}">
						<!-- 로그인 전 -->
						<a href="/member/login">
							<img src="/img/login_in.png" width="20px" height="20px">
							<span>로그인</span>
						</a>
					</c:when>
					<c:otherwise>
						<a href="/member/logout">
							<img src="/img/login_out.png" width="20px" height="20px">
							<span>로그아웃</span>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="search">
				<form id="sform" name="sform" method="get" action="#">
					<div class="window">
						<input id="query" type="text" title="검색어입력" class="input_text">
						<button class="searchIcon">
							<img src="img/search.png" height="20px" width="20px">
						</button>
					</div>
				</form>
			</div>
		</div>

		<div class="boardContainer">
			<div class="column">
				<h3>GGUM</h3>
				<div class="list">
					<a href="#">GGUM 소개</a>
				</div>
				<div class="list">
					<a href="#">운영진 소개</a>
				</div>
				<div class="list">
					<a href="#">공지사항</a>
				</div>
			</div>
			<div class="column">
				<h3>커뮤니티</h3>
				<div class="list">
					<a href="#">자유게시판</a>
				</div>
				<div class="list">
					<a href="#">익명게시판</a>
				</div>
			</div>
			<div class="column">
				<h3>금강IN</h3>
				<div class="list">
					<a href="#">스터디모집</a>
				</div>
				<div class="list">
					<a href="#">동아리모집</a>
				</div>
				<div class="list">
					<a href="#">취업/진로</a>
				</div>
				<div class="list">
					<a href="#">강의평가</a>
				</div>
			</div>
			<div class="column">
				<h3>편의</h3>
				<div class="list">
					<a href="#">HOT맛집</a>
				</div>
				<div class="list">
					<a href="#">제휴업체</a>
				</div>
				<div class="list">
					<a href="#">버스</a>
				</div>
				<div class="list">
					<a href="#">택시</a>
				</div>
				<div class="list">
					<a href="#">벼룩시장</a>
				</div>
			</div>
			<div class="column lastColumn">
				<h3>GGU민원센터</h3>
				<div class="list">
					<a href="#">건의사항</a>
				</div>
				<div class="list">
					<a href="#">문의사항</a>
				</div>
			</div>
		</div>
	</header>
	<!-- 
	<div>
		<c:choose>
			<c:when test="${fn:contains(url, 'ggum')}">
				<li class="active">GGUM
			</c:when>
			<c:otherwise>
				<li>GGUM
			</c:otherwise>
		</c:choose>
			<div>
				<a href="/board/ggum/intro">GGUM소개</a>
				<a href="/board/ggum/team_intro">운영진소개</a>
				<a href="/board/ggum/notice">공지사항</a>
			</div>
		</li>
		
		<c:choose>
			<c:when test="${fn:contains(url, 'community')}">
				<li class="active">커뮤니티
			</c:when>
			<c:otherwise>
				<li>커뮤니티
			</c:otherwise>
		</c:choose>
			<div>
				<a href="/board/community/free">자유게시판</a>
				<a href="/board/community/anonymous">익명게시판</a>
			</div>
		</li>
		
		<c:choose>
			<c:when test="${fn:contains(url, 'ggu_in')}">
				<li class="active">금강IN
			</c:when>
			<c:otherwise>
				<li>금강IN
			</c:otherwise>
		</c:choose>
			<div>
				<a href="/board/ggu_in/study">스터디모집`</a>
				<a href="/board/ggu_in/circle">동아리모집</a>
				<a href="/board/ggu_in/career">취업/진로</a>
				<a href="/board/ggu_in/lecture">강의평가</a>
			</div>
		</li>
		
		<c:choose>
			<c:when test="${fn:contains(url, 'convenience')}">
				<li class="active">편의
			</c:when>
			<c:otherwise>
				<li>편의
			</c:otherwise>
		</c:choose>
			<div>
				<a href="/board/convenience/restaurant">HOT맛집</a>
				<a href="/board/convenience/alliance">제휴업체</a>
				<a href="/board/convenience/bus">버스</a>
				<a href="/board/convenience/taxi">택시</a>
				<a href="/board/convenience/flea_market">벼룩시장</a>
			</div>
		</li>
		
		<c:choose>
			<c:when test="${fn:contains(url, 'complaint')}">
				<li class="active">편의
			</c:when>
			<c:otherwise>
				<li>편의
			</c:otherwise>
		</c:choose>
			<div>
				<a href="/board/complaint/suggestion">건의사항</a>
				<a href="/board/complaint/qna">문의사항</a>
			</div>
		</li>
	</div>	
	 -->
</header>
<script>
</script>