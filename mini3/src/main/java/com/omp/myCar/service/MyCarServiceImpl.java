package com.omp.myCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.common.Page;
import com.omp.repository.domain.Board;
import com.omp.repository.mapper.MyCarMapper;

@Service
public class MyCarServiceImpl implements MyCarService {

	@Autowired
	private MyCarMapper mapper;
	
	public List<Board> boardList(Page page) throws Exception{
		return mapper.boardList(page);
	}
	
	public void sellInsert(Board board) throws Exception{
		mapper.sellInsert(board);
	}
	
	public Board sellDetail(Board board) throws Exception{
		return mapper.sellDetail(board);
	}
	public void confirmDetail(int boardNo) throws Exception{
		mapper.confirmDetail(boardNo);
	}
	public int boardCount() throws Exception{
		return mapper.boardCount();
	}
}
