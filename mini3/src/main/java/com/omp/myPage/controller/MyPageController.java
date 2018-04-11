package com.omp.myPage.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import com.omp.common.CookieUtils;
import com.omp.myPage.service.MyPageService;
import com.omp.repository.domain.Member;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired
	private MyPageService service;
	
	@RequestMapping("/myPage.do")
	public void myPage() throws Exception{
		
	}
	
	@ResponseBody
	@RequestMapping("/bucketInsert.do")
	public HashMap<String, Object> bucketInsert(
			@RequestParam int carNo, 
			HttpSession session,
			HttpServletRequest request,
			HttpServletResponse response
		) throws Exception{
		HashMap<String, Object> map = new HashMap<>();
		if(session.getAttribute("member")!=null) {
			map.put("memberNo", ((Member)session.getAttribute("member")).getMemberNo());
			map.put("carNo", carNo);
			map.put("code", 1); // 회원상태일 때 코드
			service.bucketInsert(map);
		}
		else {
			new CookieUtils().setCookie("bucketList", ""+carNo, 1, request, response);
			map.put("code", -1); // 비회원상태일 때 코드
		}
		return map;
	}

}
