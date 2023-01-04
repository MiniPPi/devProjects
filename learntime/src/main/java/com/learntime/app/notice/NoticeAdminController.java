package com.learntime.app.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.service.AdminNoticeService;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;

@RequestMapping("admin/notice")
@Controller
public class NoticeAdminController {
	
	@Autowired
	private AdminNoticeService ans;
	
	// 공지사항 리스트 화면
		@GetMapping("noticeListAdmin")
		public String noticeListAdmin(NoticeVo vo, Model m,PageVo pv) {
			

			int listCount = ans.selectCount();
			int currentPage = (int)pv.getP();
			int boardLimit = 6;
			int pageLimit = 5;
			pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
			
			int cmtCnt = ans.cmtCnt();
			int hit = ans.updateHit(vo);
			vo.setHit(hit);
			

			List<NoticeVo> list= null;
			if(vo.getCateNo()==0)  {
				
				list= ans.selectNoticeListAll(vo,pv);
				
			}else {
				
				list= ans.selectNoticeList(vo,pv);
				
				
			}
			
			
			m.addAttribute("list",list);
			m.addAttribute("p",pv.getP());
			
		
			
			
			return "admin/notice/noticeListAdmin";
			
		}
		
		@PostMapping("noticeListAdmin")
		public String noticeListAdmin(HttpServletRequest req,NoticeVo vo) {
			
			String activate = req.getParameter("activate");
			String deactivate = req.getParameter("deactivate");
			String deleteList = req.getParameter("deleteList");
			String[] valueArr = req.getParameterValues("valueArr");
			int no =0;
			for(int i = 0; i<valueArr.length; i++) {
				no= Integer.parseInt(valueArr[i]);
				
				vo.setNo(no);
			}
			int result = 0;
			int result2 = 0;
			int result3 = 0;
			if("활성화".equals(activate)) {
				result = ans.activate(vo);
			}else if("비활성화".equals(deactivate)) {
				result2 = ans.deactivate(vo);
			}else if ("삭제".equals(deleteList)) {
				result3 = ans.deleteOne(vo);
			}
			return "admin/notice/noticeListAdmin";
			
		}
		
		// 공지사항 상세조회 화면
		@GetMapping("noticeDetailAdmin")
		public String noticeDetailAdmin(NoticeVo vo, HttpSession session, Model m) {
			
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
			int cmtCnt = ans.cmtCnt();
			int hit = ans.updateHit(vo);
			vo.setHit(hit);
			vo.setCmt(cmtCnt);
			if(loginMember !=null) {
				vo = ans.selectOne(vo);
				m.addAttribute("vo",vo);
				return "admin/notice/noticeDetailAdmin";
			}else {
				return "common/errorPage";
			}
			
			
			
		}

		// 공지사항 수정페이지
		@GetMapping("noticeDetailAdminModify")
		public String noticeDetailAdmiModify() {
			return "admin/notice/noticeDetailAdminModify";
			
		}
		//팝업
		@GetMapping("noticePopUpAdmin")
		public String noticePopUpAdmin() {
			return "admin/notice/noticePopUpAdmin";
		}
		
		

}
