package com.ggu.gguri.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggu.common.ServerCode;

@SuppressWarnings({ "rawtypes", "unchecked" })
@Service("memberSvc")
public class MemberService {
	@Autowired
	MemberMapper memberMapper;
	
	public Map getMemberList(Map paramMap) {
		HashMap<String, Object> resMap = new HashMap<String, Object>();
		resMap.put("memberList", memberMapper.getMemberList(paramMap));
		return resMap;
	}
	
	public Map doLogin(Map paramMap) {
		HashMap resMap = new HashMap();
		HashMap loginInfo = memberMapper.getLoginInfo(paramMap);
		if(loginInfo != null) {
			resMap.put("loginInfo", loginInfo);
			resMap.put("RESULT_CODE", ServerCode.RESULT_SUCCESS);
		}
		else 
			resMap.put("RESULT_CODE", ServerCode.RESULT_ERROR);
		return resMap;
	}
	
	public Map addMember(Map paramMap) {
		HashMap resMap = new HashMap();
		if(memberMapper.addMember(paramMap) > 0) {
			resMap.put("RESULT_CODE", ServerCode.RESULT_SUCCESS);
		}
		else 
			resMap.put("RESULT_CODE", ServerCode.RESULT_ERROR);
		return resMap;
	}
}
