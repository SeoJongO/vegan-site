package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;

@Repository
public class OwnerDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnerDao.storeInsert()");
		
		System.out.println(ownerVo);
		
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
