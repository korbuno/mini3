package com.omp.community.service;

import java.util.List;

import com.omp.repository.domain.helper.GirlVO;
import com.omp.repository.domain.helper.NewsVO;

public interface CommunityService 
{
	public List<NewsVO> newsList(int page) throws Exception;
	public List<GirlVO> girlList(int p) throws Exception;
}
