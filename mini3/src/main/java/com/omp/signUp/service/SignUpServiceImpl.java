package com.omp.signUp.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.omp.common.AES256Util;
import com.omp.repository.domain.Member;
import com.omp.repository.mapper.SignUpMapper;

@Service
public class SignUpServiceImpl implements SignUpService
{	
	@Autowired
	private SignUpMapper mapper;
	
	@Autowired
	private JavaMailSenderImpl javaMailSender;
	
	public int idChk(String id) throws Exception{
		return mapper.idChk(id);
	}
	
	public void send(String subject, String text, String from, String to) {
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setSubject(subject);
			helper.setText(text);
			helper.setFrom(from);
			helper.setTo(to);
			javaMailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
	public void signUp(Member member) throws Exception {
		member.setPass(new AES256Util().aesEncode(member.getPass()));
		mapper.signUp(member);
	}
	

}
 