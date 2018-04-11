package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.helper.CarVO;

public interface MainMapper {
	public List<CarVO> recentSpecialList() throws Exception;
	public List<CarVO> recentNormalList() throws Exception;
	public List<CarVO> recentViewList(List<String> list) throws Exception;
	public List<CarVO> bucketList(int memberNo) throws Exception;
}
