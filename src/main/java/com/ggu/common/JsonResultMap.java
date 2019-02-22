package com.ggu.common;

import org.springframework.web.servlet.ModelAndView;

public class JsonResultMap extends ModelAndView{
	public JsonResultMap() {
		super("jsonBean");
	}
}