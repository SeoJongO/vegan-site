package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BoardVo;

@Repository
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int updateHit(int no) {
		System.out.println("BoardDao.updateHit()");
		
		int count = sqlSession.update("board.updateHit", no);
		
		return count;
	}
	
	public BoardVo selectBoard(int no) {
		System.out.println("BoardDao.selectBoard()");
		
		return sqlSession.selectOne("board.selectBoard", no);
	}
	
	public List<BoardVo> boardList() {
		System.out.println("BoardDao.boardList()");
		
		return sqlSession.selectList("board.boardList");
	}
	
	public int writeBoard(BoardVo boardVo) {
		System.out.println("BoardDao.writeBoard()");
		
		return sqlSession.insert("board.writeBoard", boardVo);
	}
	
	public int deleteBoard(int no) {
		System.out.println("BoardDao.deleteBoard()");
		
		return sqlSession.delete("board.deleteBoard", no);
	}
	
	public int updateBoard(BoardVo boardVo) {
		System.out.println("BoardDao.updateBoard()");
		
		return sqlSession.update("board.updateBoard", boardVo);
	}
}
