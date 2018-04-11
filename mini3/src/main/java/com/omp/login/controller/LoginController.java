package com.omp.login.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.omp.common.AES256Util;
import com.omp.login.service.LoginService;
import com.omp.repository.domain.Member;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private LoginService loginservice;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public void login(Member member, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		member.setPass(new AES256Util().aesEncode(member.getPass()));
		member = loginservice.login(member);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			session.setAttribute("auth", member.getAuth());
			out.println("<script>window.onload = function() {"
									+ "swal( {title: '로그인 되었습니다.', icon: 'success'} )"
									+ ".then(()=>{"
									+ " location.href='" + request.getContextPath() + "/main/main.do';"
									+ "});"
									+ "}"
					+ "</script>");
		}
		else {
			out.println("<script>window.onload = function() {"
					+ "swal( {title: '아이디 혹은 비밀번호가 잘못되었습니다.', icon: 'error'} )"
					+ ".then(()=>{"
					+ " location.href='" + request.getContextPath() + "/main/main.do';"
					+ "});"
					+ "}"
					+ "</script>");
		}
		out.flush();
	}
	
	@RequestMapping("/logout.do")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
		out.println("<script>window.onload = function() {"
				+ "swal( {title: '로그아웃되었습니다.', icon: 'success'} )"
				+ ".then(()=>{"
				+ " location.href='" + request.getContextPath() + "/main/main.do';"
				+ "});"
				+ "}"
				+ "</script>");
		out.flush();
	}
}
