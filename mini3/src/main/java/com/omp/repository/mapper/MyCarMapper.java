package com.omp.repository.mapper;

import java.util.List;

import com.omp.common.Page;
import com.omp.repository.domain.Board;

public interface MyCarMapper {

	public List<Board> boardList(Page page) throws Exception;
	public void sellInsert(Board board) throws Exception;
	public Board sellDetail(Board board) throws Exception;
	public void confirmDetail(int boardNo) throws Exception;
	public int boardCount() throws Exception;
}
