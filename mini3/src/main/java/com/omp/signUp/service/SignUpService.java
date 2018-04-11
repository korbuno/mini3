package com.omp.signUp.service;

import com.omp.repository.domain.Member;

public interface SignUpService 
{
	public int idChk(String id)  throws Exception;
	public void send(String subject, String text, String from, String to);
	public void signUp(Member member) throws Exception;
}
 