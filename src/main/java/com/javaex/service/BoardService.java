package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BoardDao;
import com.javaex.vo.BoardVo;

@Service
public class BoardService {
	
	@Autowired
	private BoardDao boardDao;
	
	// 게시판 조회수 증가, 글 하나 가져오기 ===========================================================================================
	public BoardVo getBoard(int no) {
		System.out.println("BoardService.getBoard()");
		
		int count = boardDao.updateHit(no);
		
		return boardDao.selectBoard(no);
	}
	
	// 게시판 리스트 ============================================================================================================
	public List<BoardVo> boardList(String keyword) {
		System.out.println("BoardService.boardList()");
		
		List<BoardVo> bList = boardDao.boardList(keyword);
		
		return bList;
	}
	
	// 게시판 글 등록 ===========================================================================================================
	public int writeBoard(BoardVo boardVo) {
		System.out.println("BoardService.writeBoard()");
		
		return boardDao.writeBoard(boardVo);
	}
	
	// 게시판 글 삭제 ===========================================================================================================
	public int deleteBoard(int no) {
		System.out.println("BoardService.deleteBoard()");
		
		return boardDao.deleteBoard(no);
	}
	
	// 게시판 글 수정 ===========================================================================================================
	public int updateBoard(BoardVo boardVo) {
		System.out.println("BoardService.updateBoard()");
		
		return boardDao.updateBoard(boardVo);
	}

}
