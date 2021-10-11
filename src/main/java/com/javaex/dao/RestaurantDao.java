package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.ReviewVo;

@Repository
public class RestaurantDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<OwnerVo> getStoreList(String keyword) {
		System.out.println("restaurantDao.getStoreList()");
		
		return sqlSession.selectList("restaurant.getStoreList", keyword);
	}
	
	
	public OwnerVo getOne(int s_no) {
		
		OwnerVo ownerVo = sqlSession.selectOne("restaurant.getOne", s_no);
		System.out.println("리턴된 vo"+ownerVo);
		return ownerVo;
		
	}

	//메뉴리스트
	public List<MenuVo> getMenuList(int s_no) {
		
		List<MenuVo> menuList = sqlSession.selectList("restaurant.menuList",s_no);
		
		System.out.println("메뉴리스트="+ menuList);
		return menuList;
		
		
	}
	//리뷰쓰기
	public int insertReview(ReviewVo reviewVo) {
		System.out.println("리뷰 다오:"+reviewVo);
		
		int r_no = sqlSession.insert("restaurant.insertReviewKey",reviewVo);
		System.out.println(r_no);
		return r_no;
		
		
	}
	
	//리뷰 리스트
	public List<ReviewVo> getReviewList(int s_no) {
		List<ReviewVo> reviewList = sqlSession.selectList("restaurant.reviewList",s_no);
		System.out.println("리뷰리스트:"+reviewList);
		
		return reviewList;
		
		
	}

	//리뷰 수정
	public ReviewVo reviewModi(int reviewNo) {
		System.out.println("리뷰수정다오"+reviewNo);
		
		ReviewVo reviewVo = sqlSession.selectOne("restaurant.reviewModi",reviewNo);
		System.out.println("리턴된리뷰vo"+reviewVo);
		
		return reviewVo;

		
		
	}
	
	
	
	//ajax 리뷰 하나 가지고오기
	public ReviewVo getReviewOne(int r_no) {
		System.out.println("에이작스 다오"+r_no);
		ReviewVo reviewVo = sqlSession.selectOne("restaurant.reviewOne",r_no);
		System.out.println("리턴된"+reviewVo);
		
		
		return reviewVo;
		
	}

	//리뷰수정
	public String updateModi(ReviewVo reviewVo) {
		System.out.println("서비스다오"+reviewVo);
		sqlSession.update("restaurant.updateModi",reviewVo);
		
		
		return null;
		// TODO Auto-generated method stub
		
	}

	//에이작스 리뷰삭제
	public int reviewDelete(int r_no) {
		System.out.println("다오"+r_no);
		
		int counter = sqlSession.delete("restaurant.delete",r_no);
		return counter;
		
	}

	
	
	
	
}
