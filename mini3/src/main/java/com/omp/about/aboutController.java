package com.omp.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/about")
public class aboutController {

	@RequestMapping("/about.do")
	public void about() throws Exception{
		
	}
}
