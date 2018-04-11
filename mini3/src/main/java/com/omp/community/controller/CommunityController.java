package com.omp.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.omp.community.service.CommunityService;

@Controller
@RequestMapping("/community")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/news.do")
	public void news(
			Model model, 
			@RequestParam(value="page", defaultValue="1", required=false) int page
			) throws Exception{
		model.addAttribute("newsList", communityService.newsList(page));
		model.addAttribute("page", page);
	}
	
	@RequestMapping("/girl.do")
	public void girl(
			Model model, 
			@RequestParam(value="p", defaultValue="1", required=false) int p
			) throws Exception{
		model.addAttribute("girlList", communityService.girlList(p));
		model.addAttribute("p", p);
	}
	
}
