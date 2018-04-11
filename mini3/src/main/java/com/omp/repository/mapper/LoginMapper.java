package com.omp.repository.mapper;

import com.omp.repository.domain.Member;

public interface LoginMapper 
{
	public Member login(Member member) throws Exception;
}
