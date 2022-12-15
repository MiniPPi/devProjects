package com.learntime.app.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("community")
@Controller
public class BoardController {

	@GetMapping("/board/list")
	public String boardList() {
		return "/community/boardList";
	}
	
	@GetMapping("/board/detail")
	public String boardDetail() {
		return "/community/boardDetail";
	}
	
	@GetMapping("board/write")
	public String boardWrite() {
		return "/community/boardWrite";
	}
	
	@GetMapping("board/modify")
	public String boardModify() {
		return "/community/boardModify";
	}
	
	@GetMapping("board/summer")
	public String summer() {
		return "/community/summernote";
	}
	
	//마이페이지 임시
	@GetMapping("mypage")
	public String myCommunity() {
		return "/member/mypage-community";
	}

}
