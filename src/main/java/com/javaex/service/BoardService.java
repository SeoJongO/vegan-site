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
	
	public BoardVo getBoard(int no) {
		System.out.println("BoardService.getBoard()");
		
		int count = boardDao.updateHit(no);
		
		return boardDao.selectBoard(no);
	}
	
	public List<BoardVo> boardList() {
		System.out.println("BoardService.boardList()");
		
		List<BoardVo> bList = boardDao.boardList();
		
		return bList;
	}
	
	public int writeBoard(BoardVo boardVo) {
		System.out.println("BoardService.writeBoard()");
		
		return boardDao.writeBoard(boardVo);
	}
	
	public int deleteBoard(int no) {
		System.out.println("BoardService.deleteBoard()");
		
		return boardDao.deleteBoard(no);
	}
	
	public int updateBoard(BoardVo boardVo) {
		System.out.println("BoardService.updateBoard()");
		
		return boardDao.updateBoard(boardVo);
	}

}
