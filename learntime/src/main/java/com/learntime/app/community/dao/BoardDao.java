package com.learntime.app.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.community.vo.BoardVo;

public interface BoardDao {

	//insert board
	public int write(SqlSessionTemplate sst, BoardVo vo);
	
	//select boardList
	public List<BoardVo> selectBoardList(SqlSessionTemplate sst);
	
}
