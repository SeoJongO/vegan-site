package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BoardVo;

@Repository
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	// 게시판 조회수 증가 ======================================================================================================
	public int updateHit(int no) {
		System.out.println("BoardDao.updateHit()");
		
		int count = sqlSession.update("board.updateHit", no);
		
		return count;
	}
	
	// 게시판 글 하나 가져오기 ===================================================================================================
	public BoardVo selectBoard(int no) {
		System.out.println("BoardDao.selectBoard()");
		
		return sqlSession.selectOne("board.selectBoard", no);
	}
	
	public List<BoardVo> getList(int startRnum, int endRnum, String keyword) {
		System.out.println("BoardDao.getList()");
	
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		
		return sqlSession.selectList("board.getList", pMap);
	}
	
	public int selectTotal(String keyword) {
		System.out.println("BoardDao.selectTotal()");
		
		return sqlSession.selectOne("board.selectTotal", keyword);
	}
	
	// 게시판 리스트 ===========================================================================================================
	public List<BoardVo> boardList(String keyword) {
		System.out.println("BoardDao.boardList()");
		
		return sqlSession.selectList("board.boardList", keyword);
	}
	
	// 게시판 글 등록 ==========================================================================================================
	public int writeBoard(BoardVo boardVo) {
		System.out.println("BoardDao.writeBoard()");
		System.out.println(boardVo);
		return sqlSession.insert("board.writeBoard", boardVo);
	}
	
	// 게시판 글 삭제 ===========================================================================================================
	public int deleteBoard(int no) {
		System.out.println("BoardDao.deleteBoard()");
		
		return sqlSession.delete("board.deleteBoard", no);
	}
	
	// 게시판 글 수정 ===========================================================================================================
	public int updateBoard(BoardVo boardVo) {
		System.out.println("BoardDao.updateBoard()");
		
		return sqlSession.update("board.updateBoard", boardVo);
	}
}
