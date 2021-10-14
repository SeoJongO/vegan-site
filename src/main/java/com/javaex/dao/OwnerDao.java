package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.ReviewVo;

@Repository
public class OwnerDao {

	@Autowired
	private SqlSession sqlSession;

	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnerDao.storeInsert()");

		System.out.println("dao" + ownerVo);

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

	public List<MenuVo> menuList(int s_no) {
		System.out.println("OwnerDao.menuList()");

		return sqlSession.selectList("owner.menuList", s_no);
	}

	public int menuDelete(int m_no) {
		System.out.println("OwnerDao.menuDelete()");

		return sqlSession.delete("owner.menuDelete", m_no);
	}

	public List<ReviewVo> reviewList(int s_no) {
		System.out.println("OwnerDao.reviewList()");

		return sqlSession.selectList("owner.reviewList", s_no);
	}

	public ReviewVo count(int s_no) {
		System.out.println("OwnerDao.count()");

		return sqlSession.selectOne("owner.countList", s_no);

	}

	public List<ReviewVo> date(ReviewVo dateVo2) {
		System.out.println("OwnerDao.date()");

		return sqlSession.selectList("owner.date", dateVo2);

	}

	public ReviewVo star1(int s_no) {
		System.out.println("OwnerDao.star1()");

		return sqlSession.selectOne("owner.star1", s_no);
		
		
	}
	
	public ReviewVo star2(int s_no) {
		System.out.println("OwnerDao.star2()");

		return sqlSession.selectOne("owner.star2", s_no);
		
		
	}
	
	public ReviewVo star3(int s_no) {
		System.out.println("OwnerDao.star3()");

		return sqlSession.selectOne("owner.star3", s_no);
		
		
	}
	
	public ReviewVo star4(int s_no) {
		System.out.println("OwnerDao.star4()");

		return sqlSession.selectOne("owner.star4", s_no);
		
		
	}
	
	public ReviewVo star5(int s_no) {
		System.out.println("OwnerDao.star5()");

		return sqlSession.selectOne("owner.star5", s_no);
		
		
	}

	public ReviewVo hartAvg(int s_no) {
		System.out.println("OwnerDao.hartAvg()");

		return sqlSession.selectOne("owner.hartAvg", s_no);

	}
	
}
