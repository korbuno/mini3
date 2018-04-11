package com.omp.admin.service;

import java.util.List;

import com.omp.repository.domain.Member;
import com.omp.repository.domain.Mnf;
import com.omp.repository.domain.ModelTypeCar;
import com.omp.repository.domain.Opt;
import com.omp.repository.domain.Search;
import com.omp.repository.domain.TypeCar;
import com.omp.repository.domain.helper.CarVO;

public interface AdminService 
{
	public List<TypeCar> searchTypeCar(Search search) throws Exception;
	public List<Mnf> mnfList(Mnf mnf) throws Exception;
	public List<TypeCar> typeCarList(Mnf mnf) throws Exception;
	public List<ModelTypeCar> modelTypeCarList(TypeCar type) throws Exception;
	public List<Opt> optList() throws Exception;
	public void insertCar(CarVO car) throws Exception;
	public List<Member> memberList() throws Exception;
	public void updateMember(Member member) throws Exception;
	public List<TypeCar> autocomplete(String key) throws Exception;
}
 