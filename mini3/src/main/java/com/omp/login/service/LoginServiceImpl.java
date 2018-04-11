package com.omp.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Member;
import com.omp.repository.mapper.LoginMapper;


@Service
public class LoginServiceImpl implements LoginService 
{
	@Autowired
	private LoginMapper mapper;

	@Override
	public Member login(Member member) throws Exception {
		return mapper.login(member);
	}
	
	

}
