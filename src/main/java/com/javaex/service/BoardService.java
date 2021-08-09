package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public Map<String, Object> getList(int crtPage, String keyword) {
		System.out.println("BoardService.getList()");

		int listCnt = 10;
		
		crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
		
		int startRnum = (crtPage-1)*listCnt+1;
				
		int endRnum = (startRnum+listCnt)-1;
		
		List<BoardVo> boardList = boardDao.getList(startRnum, endRnum, keyword);
		
		
		
		int totalcount = boardDao.selectTotal(keyword);
		
		int pageBtnCount = 5;
		
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		int startPageBtnNo = endPageBtnNo - (pageBtnCount-1);
		
		boolean next = false;
		if ((endPageBtnNo * listCnt) < totalcount) {
			next = true;
		} else {
			endPageBtnNo = (int) Math.ceil(totalcount/(double)listCnt);
		};
		
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		} 
		
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("boardList", boardList);
		listMap.put("prev", prev);
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		return listMap;
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
		System.out.println(boardVo);
		return boardDao.updateBoard(boardVo);
	}

}
