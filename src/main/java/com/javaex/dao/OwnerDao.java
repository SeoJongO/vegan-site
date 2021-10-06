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

import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;

@Repository
public class OwnerDao {

	@Autowired
	private SqlSession sqlSession;

	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnerDao.storeInsert()");
		
		String saveDir = "C:\\Users\\Hi-PC\\Desktop\\JavaStudy\\upload\\";

		// 원파일이름
		String orgName = file.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName: " + exName);
		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName: " + saveName);
		// 파일저장위치
		String filePath = saveDir + saveName;
		System.out.println("filePath: " + filePath);
		// 파일사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize: " + fileSize);
		// 파일 서버하드디스크에 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 파일정보를 db에 저장
		GalleryVo galleryVo = new GalleryVo(user_no, content, filePath, orgName, saveName, fileSize);

		return sqlSession.insert("owner.storeInsert", ownerVo);
	}

	public List<OwnerVo> storeList(int u_no) {
		System.out.println("OwnerDao.storeList()");

		return sqlSession.selectList("owner.storeList", u_no);
	}

	public OwnerVo getStore(int s_no) {
		System.out.println("OwnerDao.getStore()");

		return sqlSession.selectOne("owner.getStore", s_no);
	}

	public int storeDelete(int s_no) {
		System.out.println("OwnerDao.storeDelete()");

		return sqlSession.delete("owner.storeDelete", s_no);
	}

	public int storeModify(OwnerVo ownerVo) {
		System.out.println("OwnerDao.storeModify()");

		return sqlSession.update("owner.storeModify", ownerVo);
	}

	public MenuVo getMenu(int m_no) {
		System.out.println("OwnerDao.getMenu()");

		return sqlSession.selectOne("owner.getMenu", m_no);
	}

	public int menuModify(MenuVo menuVo) {
		System.out.println("OwnerDao.menuModify()");

		return sqlSession.update("owner.menuModify", menuVo);
	}

	public int menuInsert(MenuVo menuVo) {
		System.out.println("OwnerDao.menuInsert()");

		System.out.println(menuVo);

		return sqlSession.insert("owner.menuInsert", menuVo);
	}

	public List<MenuVo> menuList() {
		System.out.println("OwnerDao.menuList()");

		return sqlSession.selectList("owner.menuList");
	}

	public int menuDelete(int m_no) {
		System.out.println("OwnerDao.menuDelete()");

		return sqlSession.delete("owner.menuDelete", m_no);
	}

}
