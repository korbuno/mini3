package com.omp.community.service;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.helper.GirlVO;
import com.omp.repository.domain.helper.NewsVO;
import com.omp.repository.mapper.CommunityMapper;

@Service
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	private CommunityMapper mapper;
	
	public List<NewsVO> newsList(int page) throws Exception{
		Document doc = Jsoup.connect("http://auto.daum.net/news/main.daum?page="+page).get();
		Element ele =  doc.select("#mCenter > div.box_g > ul").get(0);
		Elements news = ele.select("li");
		
		List<NewsVO> list = new ArrayList<>();
		
		NewsVO vo;
		for (Element item : news) {
			vo = new NewsVO();
			vo.setLink(item.select("a.link_thumb").attr("href"));
			vo.setImg(item.select("img").attr("src"));
			vo.setTitle(item.select("strong.tit_thumb > a.link_txt").text());
			vo.setContents(item.select("span.desc_thumb > a.link_txt").text());
			vo.setInfo(item.select("span.info_thumb").text());
			list.add(vo);
		}
		return list;
	}
	public List<GirlVO> girlList(int p) throws Exception{
		Document doc = Jsoup.connect("http://nsbu.co.kr/bbs/board.php?bo_table=ggolit&page="+p).get();
		Element ele =  doc.select("#fboardlist > table > tbody").get(0);
		Elements girl = ele.select("tr > td.list-subject");
  
		List<GirlVO> list = new ArrayList<>();
		GirlVO vo;
		for (Element item : girl) {
			vo = new GirlVO();
			doc = Jsoup.connect(item.select("a").attr("href")).get();
			ele = doc.select("#bo_v_atc > div").get(0);
			ele = ele.select("img.aimg").get(0);
			vo.setImg(ele.attr("src"));
			vo.setLink(item.select("a").attr("href"));
			vo.setTitle(item.select("a").text());
			vo.setNumInfo(item.parent().select("td.list-date").text());
			list.add(vo);
		}
		return list;
	}
}
