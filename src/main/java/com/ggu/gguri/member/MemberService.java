package com.ggu.gguri.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@SuppressWarnings({ "rawtypes", "unchecked" })
@Service("memberSvc")
public class MemberService {
	@Autowired
	MemberMapper memberMapper;
	
	public Map getMemberList(Map paramMap) {
		HashMap<String, Object> resMap = new HashMap<String, Object>();
		resMap.put("memberList", memberMapper.getMemberList(paramMap));
		
		System.out.println("Service start");
		System.out.println(resMap);
		System.out.println("Service end");
		
		return resMap;
	}
}
