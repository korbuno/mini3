package com.omp.domesticCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Opt;
import com.omp.repository.domain.helper.CarVO;
import com.omp.repository.domain.helper.SearchVO;
import com.omp.repository.mapper.DomesticCarMapper;


@Service
public class DomesticCarServiceImpl implements DomesticCarService
{
	
	@Autowired
	private DomesticCarMapper mapper;
	
	public List<CarVO> recentList(SearchVO search) throws Exception{
		return mapper.recentList(search);
	}
	public CarVO detail(int carNo) throws Exception{
		return mapper.detail(carNo);
	}
	public List<Opt> allOptList() throws Exception{
		return mapper.allOptList();
	}
	public List<CarVO> reload(int index) throws Exception{
		return mapper.reload(index);
	}
}
