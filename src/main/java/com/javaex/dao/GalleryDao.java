package com.javaex.dao;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.vo.GalleryVo;

@Repository
public class GalleryDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<GalleryVo> galleryList() {
		System.out.println("GalleryDao.galleryList()");
		
		return sqlSession.selectList("galleryList");
	}
	
	public int restore(int user_no, MultipartFile file, String content) {
		System.out.println("GalleryDao.restore()");
		
		String saveDir = "C:\\Users\\Hi-PC\\Desktop\\JavaStudy\\upload\\";
		
		//원파일이름
		String orgName = file.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		//확장자
		String exName = file.getOriginalFilename().substring( file.getOriginalFilename().lastIndexOf(".") );
		System.out.println("exName: " + exName);
		//저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName: " + saveName);
		//파일저장위치
		String filePath = saveDir + saveName;
		System.out.println("filePath: " + filePath);
		//파일사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize: " + fileSize);
		//파일 서버하드디스크에 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);
			
			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//파일정보를 db에 저장
		GalleryVo galleryVo = new GalleryVo(user_no, content, filePath, orgName, saveName, fileSize);
		
		
		return sqlSession.insert("galleryInsert", galleryVo);
	}
	
	public GalleryVo read(int no) {
		System.out.println("GalleryDao.read()");
		
		return sqlSession.selectOne("galleryRead", no);
	}
	
	public int delete(int no) {
		System.out.println("GalleryDao.delete()");
		
		return sqlSession.delete("galleryDelete", no);
	}
	
}
