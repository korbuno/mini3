package com.omp.signUp.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.Member;
import com.omp.signUp.service.SignUpService;

@Controller
@RequestMapping("/signUp")
public class SignUpController {
	
	@Autowired
	private SignUpService signUpService;
	
	@ResponseBody
	@RequestMapping("/signUp.do")
	public boolean signUp(Member member){
		try {
			signUpService.signUp(member);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@ResponseBody
	@RequestMapping("/idChk.json")
	public int idChk(@RequestParam String id) throws Exception {
		return signUpService.idChk(id);
	}
	
	@ResponseBody
	@RequestMapping("/email.json")
	public String send(@RequestParam String email, Model model) {
		String joinCode = String.valueOf(new Random().nextInt(10000) + 1000);
		signUpService.send(
				"회원 가입 승인번호입니다.",
				new StringBuilder().append("회원 가입의 승인번호는").append(joinCode).append(" 입니다.").toString(),
				"juro1025@gmail.com",
				email
		);
		return joinCode;
	}
}
