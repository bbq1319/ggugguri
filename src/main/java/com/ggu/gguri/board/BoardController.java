package com.ggu.gguri.board;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ggu.common.JsonResultMap;

@SuppressWarnings({"unchecked", "rawtypes"})
@Controller
public class BoardController {
	@Autowired
	BoardService boardSvc;
	
	@RequestMapping("/board/getFreeBoardList.json")
	public ModelAndView getFreeBoardList(@RequestParam Map paramMap) {
		JsonResultMap resMap = new JsonResultMap();
		resMap.addObject("data", boardSvc.getFreeBoardList(paramMap));
		System.out.println("Controller");
		System.out.println(resMap);
		return resMap;
	}
}
