package com.omp.repository.mapper;

import com.omp.repository.domain.Member;

public interface SignUpMapper {
	public int idChk(String id) throws Exception;
	public void signUp(Member member) throws Exception;
}
