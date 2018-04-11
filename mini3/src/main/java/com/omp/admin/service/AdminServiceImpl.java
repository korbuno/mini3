package com.omp.admin.service;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.omp.repository.domain.Member;
import com.omp.repository.domain.Mnf;
import com.omp.repository.domain.ModelTypeCar;
import com.omp.repository.domain.Opt;
import com.omp.repository.domain.Search;
import com.omp.repository.domain.TypeCar;
import com.omp.repository.domain.helper.CarVO;
import com.omp.repository.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper mapper;

	public List<TypeCar> searchTypeCar(Search search) throws Exception {
		return mapper.searchTypeCar(search);
	}

	public List<Mnf> mnfList(Mnf mnf) throws Exception {
		return mapper.mnfList(mnf);
	};

	public List<TypeCar> typeCarList(Mnf mnf) throws Exception {
		return mapper.typeCarList(mnf);
	}
	
	public List<Member> memberList() throws Exception{
		return mapper.memberList();
	}

	public List<ModelTypeCar> modelTypeCarList(TypeCar type) throws Exception {
		return mapper.modelTypeCarList(type);
	}

	public List<Opt> optList() throws Exception {
		return mapper.optList();
	}

	public void insertCar(CarVO car) throws Exception {
		mapper.insertCar(car);
		int carNo = mapper.selectCarNo();

		HashMap<String, Object> optMap = new HashMap<>();
		optMap.put("carNo", carNo);
		for (int opt : car.getOptionNo()) {
			optMap.put("opt", opt);
			mapper.insertOpt(optMap);
		}

		MultipartFile[] mpfList = car.getAttach();
		String uploadPath = "c:/Users/ailee/eclipse-workspace/jsp/mini3/src/main/webapp/upload";
		String dir = "/car";
		String subPath = dir + new SimpleDateFormat("/yyyy/MM/dd/hh/").format(new Date());
		File f = new File(uploadPath + subPath);

		if (!f.exists())
			f.mkdirs();
		for (MultipartFile mpf : mpfList) {
			String oriName = mpf.getOriginalFilename();
			String ext = oriName.substring(oriName.lastIndexOf("."));
			String saveFileName = UUID.randomUUID().toString() + ext;
			HashMap<String, Object> map = new HashMap<String, Object>();

			f = new File(uploadPath + subPath + saveFileName);

			mpf.transferTo(f);
			String thumbPath = makeThumbnail(uploadPath + subPath, uploadPath + subPath + saveFileName, saveFileName, ext, 450, 270);
			String detailThumbPath = makeThumbnail(uploadPath + subPath, uploadPath + subPath + saveFileName, saveFileName, ext, 940, 560);
			map.put("oriName", oriName);
			map.put("sysName", saveFileName);
			map.put("filePath", uploadPath + subPath + saveFileName);
			map.put("thumbPath", thumbPath);
			map.put("detailThumbPath", detailThumbPath);
			map.put("fileSize", mpf.getSize());
			map.put("carNo", carNo);
			
			mapper.insertFile(map);
		}
	}

	// 썸네일 메소드
	private String makeThumbnail(String path, String filePath, String fileName, String fileExt, int dw, int dh) throws Exception{

	    // 원본 이미지 입니다.
		File orgFile = new File(path, fileName);
	    BufferedImage srcImg = ImageIO.read(orgFile);
		
	    // 원본이미지 크기 입니다.
	    int ow = srcImg.getWidth();
	    int oh = srcImg.getHeight();
		
	    // 늘어날 길이를 계산하여 패딩합니다.
	    int pd = 0;
	    if(ow > oh) {
	 	pd = (int)(Math.abs((dh * ow / (double)dw) - oh) / 2d);
	    } else {
		pd = (int)(Math.abs((dw * oh / (double)dh) - ow) / 2d);
	    }
	    srcImg = Scalr.pad(srcImg, pd, Color.WHITE, Scalr.OP_ANTIALIAS);
		
	    // 이미지 크기가 변경되었으므로 다시 구합니다.
	    ow = srcImg.getWidth();
	    oh = srcImg.getHeight();
		
	    // 썸네일 비율로 크롭할 크기를 구합니다.
	    int nw = ow;
	    int nh = (ow * dh) / dw;
	    if(nh > oh) {
			nw = (oh * dw) / dh;
			nh = oh;
	    }
		
	    // 늘려진 이미지의 중앙을 썸네일 비율로 크롭 합니다.
	    BufferedImage cropImg = Scalr.crop(srcImg, (ow-nw)/2, (oh-nh)/2, nw, nh);
		
	    // 리사이즈(썸네일 생성)
	    BufferedImage destImg = Scalr.resize(cropImg, dw, dh);
		
	    // 이미지 출력
	    String thumbName = path + "THUMB("+dw+"x"+dh+")_" + fileName;
	    File thumbFile = new File(thumbName);

	    ImageIO.write(destImg, "png", thumbFile);
	    
	    return thumbName;
	}
	
	public void updateMember(Member member) throws Exception{
		mapper.updateMember(member);
	}
	
	public List<TypeCar> autocomplete(String key) throws Exception{
		return mapper.autocomplete(key);
	}

}
