package com.omp.admin.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.admin.service.AdminService;
import com.omp.common.service.DatabaseUpdate;
import com.omp.repository.domain.Member;
import com.omp.repository.domain.Mnf;
import com.omp.repository.domain.ModelTypeCar;
import com.omp.repository.domain.Opt;
import com.omp.repository.domain.Search;
import com.omp.repository.domain.TypeCar;
import com.omp.repository.domain.helper.CarVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService; // 자동주입
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping("/main.do")
	public void main(Model model, Mnf mnf) throws Exception{
		model.addAttribute("mnfList", adminService.mnfList(mnf));
	}
	
	@ResponseBody
	@RequestMapping("/domestic.do")
	public List<Mnf> domestic(Model model, Mnf mnf) throws Exception{
		return adminService.mnfList(mnf);
	}
	
	@ResponseBody
	@RequestMapping("/typeCarList.json")
	public List<TypeCar> typeCarList(Mnf mnf) throws Exception{
		return adminService.typeCarList(mnf);
	}
	
	@ResponseBody
	@RequestMapping("/modelTypeCarList.json")
	public List<ModelTypeCar> modelTypeCarList(TypeCar type) throws Exception{
		return adminService.modelTypeCarList(type);
	}
	
	@ResponseBody
	@RequestMapping("/search.json")
	public List<TypeCar> searchTypeCar(Search search) throws Exception{
		return adminService.searchTypeCar(search);
	}
	
	@ResponseBody
	@RequestMapping("/optList.json")
	public List<Opt> optList() throws Exception{
		return adminService.optList();
	}
	
	@ResponseBody
	@RequestMapping("/insertCar.do")
	public void insertCar(CarVO car) throws Exception{
		adminService.insertCar(car);
	}
	
	@RequestMapping("/member.do")
	public void member(Model model) throws Exception{
		model.addAttribute("memberList", adminService.memberList());
	}
	
	@RequestMapping("/resetPage.do")
	public void resetPage() throws Exception{
		
	}
	
	@RequestMapping("/reset.do")
	public void reset() throws Exception{
		new DatabaseUpdate().scheduler();
	}
	
	@ResponseBody
	@RequestMapping("/updateMember.do")
	public void updateMember(Member member) throws Exception{
		adminService.updateMember(member);
	}
	
	@ResponseBody
	@RequestMapping("/autocomplete.do")
	public List<TypeCar> autocomplete(String key) throws Exception{
		return adminService.autocomplete(key);
	}
}
