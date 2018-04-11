package com.omp.common;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.omp.repository.domain.ImageFiles;

@Controller
@RequestMapping("/common")
public class ImageView{
	
	@RequestMapping("/imageView.do")
	public void imageView(ImageFiles image, HttpServletResponse response) throws Exception {

		File f;
		if(image.getFilePath() != null) {
			f = new File(image.getFilePath());
			if(!f.exists()) {
				f = new File("C:\\mini3\\upload\\465x300.jpg");
			}
		}
		else {
			f = new File("C:\\mini3\\upload\\465x300.jpg");
		}
		
		
		response.setHeader("Content-Type", "image/jpg");
		
		FileInputStream fis = new FileInputStream(f);
		BufferedInputStream bis = new BufferedInputStream(fis);
		
		OutputStream out = response.getOutputStream(); // 파일이니깐 write 하면 안됨
		BufferedOutputStream bos = new BufferedOutputStream(out);
		while (true) {
			int ch = bis.read();
			if (ch == -1) break;
			
			bos.write(ch); //사용자에게 출력
		}
		
		bis.close();
		fis.close();

		bos.close();
		out.close();
	}
	
}