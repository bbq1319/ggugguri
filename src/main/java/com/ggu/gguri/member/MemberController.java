package com.ggu.gguri.member;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ggu.common.JsonResultMap;

@SuppressWarnings({"unchecked", "rawtypes"})
@Controller
public class MemberController {
	@Autowired
	MemberService memberSvc;
	
	@RequestMapping("/member/getMemberList.json")
	public ModelAndView getMemberList(@RequestParam Map paramMap) {
		JsonResultMap resMap = new JsonResultMap();
		resMap.addObject("data", memberSvc.getMemberList(paramMap));
		
		System.out.println(resMap);
		
		return resMap;
	}
}
