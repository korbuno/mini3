package com.omp.myCar.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.common.Page;
import com.omp.common.PageResult;
import com.omp.myCar.service.MyCarService;
import com.omp.repository.domain.Board;

@Controller
@RequestMapping("/myCar")
public class MyCarController {

	@Autowired
	private MyCarService myCarService;
	
	@RequestMapping("/buy.do")
	public void buy() throws Exception{
	}
	@RequestMapping("/sell.do")
	public void sell(Model model, @RequestParam(defaultValue="1", required=false) int pageNo) throws Exception{
		model.addAttribute("boardList", myCarService.boardList(new Page(pageNo)));
		model.addAttribute("pageRes", new PageResult(pageNo, myCarService.boardCount()));
	}
	
	@ResponseBody
	@RequestMapping("/sellInsert.do")
	public void sellInsert(Board board) throws Exception{
		board.setTitle(board.getTitle() + new String[] {
				" 빠른 상담을 요청합니다.", " 상담을 요청합니다.",
				" 판매하고 있습니다. 연락주세요.", " 판매상담 부탁드립니다."
				}[new Random().nextInt(4)]
		);
		if(board.getRole()==0) board.setRole(20);
		myCarService.sellInsert(board);
	}
	
	@ResponseBody
	@RequestMapping("/sellDetail.do")
	public Map<String, Object> sellDetail(Board board, HttpServletRequest request) throws Exception{
		
		Map<String, Object> res = new HashMap<>();
		board = myCarService.sellDetail(board);
		res.put("board", board);
		res.put("code", 200);
		Object auth = request.getSession().getAttribute("auth");
		if(auth == null) res.put("code", -1); // 로그아웃 상태
		else if((Integer)auth != 4 && board.getRole() == 20) res.put("code", 201);
		else if((Integer)auth != 4 && board.getRole() == 21) res.put("code", -2); // 비밀글 + 관리자가 아닐 때
		return res;
	}
	@ResponseBody
	@RequestMapping("/confirmDetail.do")
	public void confirmDetail(int boardNo) throws Exception{
		myCarService.confirmDetail(boardNo);
	}
}
