package com.ggu.gguri.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
		return resMap;
	}
	
	@RequestMapping("/member/login")
	public String login(@RequestParam Map paramMap) {
		return "auth/login";
	}
	
	@RequestMapping("/member/logout")
	public String logout(@RequestParam Map paramMap, HttpServletRequest request) throws Exception {
		request.getSession().invalidate();
		return "redirect:/home";
	}
	
	@RequestMapping("/member/regist")
	public String regist(@RequestParam Map paramMap) {
		return "auth/regist";
	}
	
	@RequestMapping("/member/doLogin.json")
	public ModelAndView doLogin(@RequestParam Map paramMap, HttpServletRequest request) {
		JsonResultMap resMap = new JsonResultMap();
		paramMap.put("user_id", paramMap.get("id"));
		paramMap.put("user_password", paramMap.get("password"));
		
		HashMap map = (HashMap) memberSvc.doLogin(paramMap);
		if(map.containsKey("loginInfo"))
			request.getSession().setAttribute("loginInfo", map.get("loginInfo"));
		resMap.addObject("data", map);
		return resMap;
	}
	
	@RequestMapping("/member/addMember.json")
	public ModelAndView addMember(@RequestParam Map paramMap, HttpServletRequest request) {
		JsonResultMap resMap = new JsonResultMap();
		resMap.addObject("data", memberSvc.addMember(paramMap));
		return resMap;
	}
}
