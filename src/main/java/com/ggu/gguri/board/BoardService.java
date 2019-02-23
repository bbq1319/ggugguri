package com.ggu.gguri.board;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@SuppressWarnings({ "rawtypes", "unchecked" })
@Service("boardSvc")
public class BoardService {
	@Autowired
	BoardMapper boardMapper;
	
	public Map getFreeBoardList(Map paramMap) {
		HashMap resMap = new HashMap();
		paramMap.put("type", "best");
		resMap.put("freeBoardBest", boardMapper.getFreeBoardList(paramMap));
		paramMap.put("type", "recent");
		resMap.put("freeBoardRecent", boardMapper.getFreeBoardList(paramMap));
		
		return resMap;
	}
}
