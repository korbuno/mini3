package com.omp.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.common.CookieUtils;
import com.omp.main.service.MainService;
import com.omp.repository.domain.Member;
import com.omp.repository.domain.helper.CarVO;

@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	private MainService mainService; // 자동주입
	
	@RequestMapping("/main.do")
	public void main(Model model) throws Exception{
		model.addAttribute("recentSpecialList", mainService.recentSpecialList());
		model.addAttribute("recentNormalList", mainService.recentNormalList());
	}
	
	@ResponseBody
	@RequestMapping("/recentViewList.do")
	public List<CarVO> recentViewList(HttpServletRequest request) throws Exception{
		return mainService.recentViewList(new CookieUtils().getValueList("recentView", request));
	}
	
	@ResponseBody
	@RequestMapping("/bucketList.do")
	public List<CarVO> bucketList(HttpServletRequest request, HttpSession session) throws Exception{
		if(session.getAttribute("member")!=null) 
			return mainService.bucketList(((Member)session.getAttribute("member")).getMemberNo());
		else 
			return mainService.recentViewList(new CookieUtils().getValueList("bucketList", request));
		
	}
}
