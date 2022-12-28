package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
@Service
public interface NoticeService {
	
	public int noticeWrite(NoticeVo vo);

	public List<NoticeVo> selectNoticeList(NoticeVo vo, PageVo pv);

	public int selectCount();

	public int cmtCnt();

	public int updateHit(NoticeVo vo);

	public NoticeVo selectOne(NoticeVo vo);

	public List<NoticeVo> selectNoticeListAll(NoticeVo vo, PageVo pv);

	//public List<NoticeVo> selectsearchOne(NoticeVo vo, PageVo pv);

}
