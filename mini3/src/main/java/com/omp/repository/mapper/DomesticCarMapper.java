package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.Opt;
import com.omp.repository.domain.helper.CarVO;
import com.omp.repository.domain.helper.SearchVO;

public interface DomesticCarMapper {
	public List<CarVO> recentList(SearchVO search) throws Exception;
	public CarVO detail(int carNo) throws Exception;
	public List<Opt> allOptList() throws Exception;
	public List<CarVO> reload(int index) throws Exception;
}
