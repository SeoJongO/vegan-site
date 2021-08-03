package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BoardService;
import com.javaex.vo.BoardVo;
import com.javaex.vo.UserVo;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	// 게시판 리스트 ===========================================================================================================
	@RequestMapping(value = "/board", method = {RequestMethod.GET, RequestMethod.POST})
	public String board(Model model, @RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) {
		System.out.println("BoardController.board()");
		
		List<BoardVo> bList = boardService.boardList(keyword);
		
		model.addAttribute("bList", bList);
		
		return "board/board";
	}
	
	// 게시판 조회수 증가, 글 하나 가져오기 ==========================================================================================
	@RequestMapping(value = "/board/read", method = {RequestMethod.GET, RequestMethod.POST})
	public String read(Model model, @RequestParam("no") int no) {
		System.out.println("BoardController.read()");
		
		BoardVo boardVo = boardService.getBoard(no);
		
		model.addAttribute("boardVo", boardVo);
		
		return "board/read";
	}
	
	// 게시판 글 등록폼 =========================================================================================================
	@RequestMapping(value = "/board/writeForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeForm(HttpSession session) {
		System.out.println("BoardController.writeForm()");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if(authUser == null) {
			return "redirect:/user/loginForm";
		}
		
		return "board/writeForm";
	}
	
	// 게시판 글 등록 ===========================================================================================================
	@RequestMapping(value = "/board/write", method = {RequestMethod.GET, RequestMethod.POST})
	public String write(HttpSession session,
						@RequestParam("title") String title,
						@RequestParam("content") String content) {
		System.out.println("BoardController.write()");
		
		int userNo = ((UserVo)session.getAttribute("authUser")).getNo();
		
		BoardVo boardVo = new BoardVo(title, content, userNo);
		
		boardService.writeBoard(boardVo);
		
		return "redirect:/board";
	}
	
	// 게시판 글 수정폼 ==========================================================================================================
	@RequestMapping(value = "/board/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm(HttpSession session, Model model, @RequestParam("no") int no) {
		System.out.println("BoardController.modifyForm()");
		
		BoardVo modify = boardService.getBoard(no);
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if(authUser == null) {
			return "redirect:/main";
		}
		
		if(authUser.getNo() == modify.getUserNo()) {
			model.addAttribute("modify", modify);
			return "board/modifyForm";
		} else {
			return "redirect:/main";
		}
		
	}
	
	// 게시판 글 수정 ===========================================================================================================
	@RequestMapping(value = "/board/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify(Model model,
						 @RequestParam("no") int no,
						 @RequestParam("title") String title,
						 @RequestParam("content") String content) {
		System.out.println("BoardController.modify()");
		
		BoardVo boardVo = new BoardVo(title, content, no);
		System.out.println(boardVo);
		boardService.updateBoard(boardVo);
		
		return "redirect:/board";
	}
	
	// 게시판 글 삭제 ===========================================================================================================
	@RequestMapping(value = "/board/delete", method = {RequestMethod.GET, RequestMethod.POST})
	public String delete(@RequestParam("no") int no) {
		System.out.println("BoardController.delete()");
		
		boardService.deleteBoard(no);
		
		return "redirect:/board";
	}
	
}
