package com.omp.domesticCar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.CookieUtils;
import com.omp.domesticCar.service.DomesticCarService;
import com.omp.repository.domain.helper.CarVO;
import com.omp.repository.domain.helper.SearchVO;

@Controller
@RequestMapping("/domesticCar")
public class DomesticCarController {
	
	@Autowired
	private DomesticCarService domesticCarService; // 자동주입
	
	@RequestMapping("/main.do")
	public void main(Model model, SearchVO search) throws Exception{
		model.addAttribute("recentList", domesticCarService.recentList(search));
	}
	
	@ResponseBody
	@RequestMapping("/search.do")
	public void search(SearchVO search) throws Exception{
	}
	
	@ResponseBody
	@RequestMapping("/reload.do")
	public List<CarVO> reload(@RequestParam int index) throws Exception{
		return domesticCarService.reload(index);
	}
	
	@RequestMapping("/detail.do")
	public ModelAndView detail(
			@RequestParam int carNo, 
			ModelAndView mav,
			HttpServletRequest request,
			HttpServletResponse response
			)throws Exception{
		// 쿠키 값은 carNo값이다.
		new CookieUtils().setCookie("recentView", ""+carNo, 1, request, response);
		mav.addObject("allOptList", domesticCarService.allOptList());
		mav.addObject("detail", domesticCarService.detail(carNo));
		mav.setViewName("domesticCar/detail");
		
		return mav;
	}
}

