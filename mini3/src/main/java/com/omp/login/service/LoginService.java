package com.omp.login.service;

import com.omp.repository.domain.Member;

public interface LoginService 
{
	public Member login(Member member) throws Exception;
}
 