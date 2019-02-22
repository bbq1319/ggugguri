/**
 * @File Name : function.core
 * @Description : 
 *
 * @Version : 1.0
 */
(function($){
	"use strict";
	$.fnUtil = $.fnUtil || {};	
	/*$.ui.dialog.prototype._focusTabbable = function(){};*/
	$.extend($.fnUtil, {
		ajaxProcess : null,
		ajax : function(parm, fncallback) {
			/** 
			 * ajax 서비스 공통
			 * @param parm	- 파라미터 [ async : false 동기, true : 비동기, loding : 로딩 이미지 표시여부(동기방식일경우 안됨) ]
			 * @param fncallback -  리턴 콜백 데이터
			 * @sample fnUtil.getAjax(parm, function(callback) {});
			 * @returns
			 */
			var cfg = {
					sync : true,
					loding : true,
					url : "",
					type : "json",
					crossDomain : null,
					data : null
			}
			$.extend(cfg, parm||{});
			$.ajax({
				url:cfg.url,			
				type:"post",
				dataType:cfg.type,
				async:cfg.sync,	
				data: cfg.data,	
				crossDomain : cfg.crossDomain,
				//traditional : true,
				//mimeType: 'application/json',
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				beforeSend : function(xhr) {			
					$.fnUtil.ajaxProcess = xhr;
					if(cfg.loding) {
						$.fnUtil.loding("처리 중 입니다..");
						//$.fnUtil.lodingT("처리 중 입니다..");//test
					}
				},
				success : function(data) {
					if(cfg.loding) $.fnUtil.lodingD();
					//if(cfg.loding) $.fnUtil.lodingTD();//test
					
					$.fnUtil.ajaxProcess = null;
					if(cfg.type == 'json') {
						return fncallback(data);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if(cfg.loding) $.fnUtil.lodingD();
					$.fnUtil.ajaxProcess = null;
					//alert_modal(XMLHttpRequest.status);
					if(XMLHttpRequest.status == '403') {	//접근권한
						alert("요청하신 정보에 접근권한이 없습니다.\n자세한 정보가 필요하실 경우 시스템 담당자에게 문의하시기 바랍니다.");
					} else {
						if(textStatus != 'abort') alert("이용에 불편을 드려 죄송합니다.\n자세한 정보가 필요하실 경우 시스템 담당자에게 문의하시기 바랍니다.");
					}
				}
			 });
		},
		//------------------------------------------------------------------------
		loding : function(msg, elHtml) {
			$("#loader-wrapper").show();
		},		
		lodingD : function() {
			$("#loader-wrapper").hide();
		}
	});
}) (jQuery);