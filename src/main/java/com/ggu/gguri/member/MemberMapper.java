package com.ggu.gguri.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

@SuppressWarnings("rawtypes")
@MapperScan
public interface MemberMapper {
	public List getMemberList(Map paramMap);
	
	public HashMap getLoginInfo(Map paramMap);
}
