package com.omp.myPage.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.mapper.MyPageMapper;

@Service
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	private MyPageMapper mapper;
	
	public void bucketInsert(HashMap<String, Object> map) throws Exception{
		mapper.bucketInsert(map);
	}
}
