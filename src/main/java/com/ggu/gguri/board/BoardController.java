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

	@RequestMapping("/board/community/anonymous")
	public String anonymous(@RequestParam Map paramMap) {
		return "board/community/anonymous";
	}

	@RequestMapping("/board/community/free")
	public String free(@RequestParam Map paramMap) {
		return "board/community/free";
	}
	
	@RequestMapping("/board/complaint/qna")
	public String qna(@RequestParam Map paramMap) {
		return "board/complaint/qna";
	}

	@RequestMapping("/board/complaint/suggestion")
	public String suggestion(@RequestParam Map paramMap) {
		return "board/complaint/suggestion";
	}

	@RequestMapping("/board/convenience/alliance")
	public String alliance(@RequestParam Map paramMap) {
		return "board/convenience/alliance";
	}

	@RequestMapping("/board/convenience/bus")
	public String bus(@RequestParam Map paramMap) {
		return "board/convenience/bus";
	}

	@RequestMapping("/board/convenience/flea_market")
	public String flea_market(@RequestParam Map paramMap) {
		return "board/convenience/flea_market";
	}

	@RequestMapping("/board/convenience/restaurant")
	public String restaurant(@RequestParam Map paramMap) {
		return "board/convenience/restaurant";
	}

	@RequestMapping("/board/convenience/taxi")
	public String taxi(@RequestParam Map paramMap) {
		return "board/convenience/taxi";
	}

	@RequestMapping("/board/ggu_in/career")
	public String career(@RequestParam Map paramMap) {
		return "board/ggu_in/career";
	}

	@RequestMapping("/board/ggu_in/circle")
	public String circle(@RequestParam Map paramMap) {
		return "board/ggu_in/circle";
	}

	@RequestMapping("/board/ggu_in/lecture")
	public String lecture(@RequestParam Map paramMap) {
		return "board/ggu_in/lecture";
	}

	@RequestMapping("/board/ggu_in/study")
	public String study(@RequestParam Map paramMap) {
		return "board/ggu_in/study";
	}

	@RequestMapping("/board/ggum/intro")
	public String intro(@RequestParam Map paramMap) {
		return "board/ggum/intro";
	}

	@RequestMapping("/board/ggum/notice")
	public String notice(@RequestParam Map paramMap) {
		return "board/ggum/notice";
	}

	@RequestMapping("/board/ggum/team_info")
	public String team_info(@RequestParam Map paramMap) {
		return "board/ggum/team_info";
	}
	
	@RequestMapping("/board/getFreeBoardList.json")
	public ModelAndView getFreeBoardList(@RequestParam Map paramMap) {
		JsonResultMap resMap = new JsonResultMap();
		resMap.addObject("data", boardSvc.getFreeBoardList(paramMap));
		return resMap;
	}
}
