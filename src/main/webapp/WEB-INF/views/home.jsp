<%@ page language="java" contentType="text/HTML;charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
		<%@ include file="/WEB-INF/views/common/common.jsp"%>
	</head>

	<body>
		<h1>
			Hello world!  
		</h1>
		
		<P>  The time on the server is ${serverTime}. </P>
		<div id="test">실패</div>
	</body>

	<script>
		/* 
		$.ajax({  
		    type : "POST",  
		    url : "/member/getMemberList.json",  
		    dataType : "json",  
		    success : function(data){ 
		    	alert("성공");
		    	
		    	var html = "<div>성공이란다</div>";
		        $("#id").append(html);     
		    },  
		    error:function(xhr,status,error){ //ajax 오류인경우  
		        console.log("error\nxhr : " + xhr + ", status : " + status + ", error : " + error);                 
		    }  
		});  
		 */
		 
		var param = {
			url: "/member/getMemberList.json" 
		};
		
		$.fnUtil.ajax(param, function(obj) {
			console.log(obj);
		}) 
	</script>
</html>
