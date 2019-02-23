<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<header>
	<c:set var="id" value="${user_id }" />
	<c:set var="url"
		value='${requestScope["javax.servlet.forward.request_uri"]}' />

	<p class="logo_type">
		<a href="/home" >
		GGUM</a>
	</p>

	<div class="top_nav">
		<c:choose>
			<c:when test="${empty user_id}">
				<!-- 로그인 전 -->
				<div class="account">
					<a href="/member/login">가입 및 로그인</a>
				</div>
			</c:when>
			<c:otherwise>
				<div id="account_menu" class="account_menu">
					<div class="account_menu_box">
						<p class="button_type_ol sm btn_signout">
							<a href="/member/logout">로그아웃</a>
						</p>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<hr>
</header>
<script>
</script>