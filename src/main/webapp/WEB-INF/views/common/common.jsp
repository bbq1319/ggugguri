<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta charset="UTF-8">
<%
	String contextPath = request.getContextPath();
%>
<c:set var="contextPath" value="<%=contextPath %>"></c:set>

<!-- 로그인한 사용자 ID -->
<div>s<c:out value="${sessionScope}" /></div>
<c:set var="user_id" value="${sessionScope.loginInfo.id}" />

<!-- 공통 에러코드 -->
<c:set var="result_success" value="${ServerCode.RESULT_SUCCESS }" />
<c:set var="result_error" value="${ServerCode.RESULT_ERROR }" />
<c:set var="result_already" value="${ServerCode.RESULT_ALREADY }" />
<c:set var="result_empty" value="${ServerCode.RESULT_EMPTY }" />
<c:set var="result_auth_error" value="${ServerCode.RESULT_AUTH_ERROR }" />
<c:set var="result_not_login" value="${ServerCode.RESULT_NOT_LOGIN }" />
<c:set var="result_server_error" value="${ServerCode.RESULT_SERVER_ERROR }" />
<c:set var="is_real" value="${ServerCode.IS_REAL }" />

<!-- JS -->
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/function.core.js?ver=1"></script>