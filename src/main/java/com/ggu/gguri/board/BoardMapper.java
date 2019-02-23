package com.ggu.gguri.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

@SuppressWarnings("rawtypes")
@MapperScan
public interface BoardMapper {
	public List getFreeBoardList(Map paramMap);
}
