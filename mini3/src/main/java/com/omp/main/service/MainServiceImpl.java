package com.omp.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.helper.CarVO;
import com.omp.repository.mapper.MainMapper;


@Service
public class MainServiceImpl implements MainService 
{
	
	@Autowired
	private MainMapper mapper;
	
	public List<CarVO> recentSpecialList() throws Exception{
		return mapper.recentSpecialList();
	}
	public List<CarVO> recentNormalList() throws Exception{
		return mapper.recentNormalList();
	}
	
	public List<CarVO> recentViewList(List<String> list) throws Exception{
		return mapper.recentViewList(list);
	}
	public List<CarVO> bucketList(int memberNo) throws Exception{
		return mapper.bucketList(memberNo);
	}
}
