package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;


public interface AdminNoticeService {

	public int selectCount();

	public int cmtCnt();

	public int updateHit(NoticeVo vo);

	public List<NoticeVo> selectNoticeListAll(NoticeVo vo, PageVo pv);

	public List<NoticeVo> selectNoticeList(NoticeVo vo, PageVo pv);

	public NoticeVo selectOne(NoticeVo vo);

	public int activate(NoticeVo vo);

	public int deactivate(NoticeVo vo);

	public int deleteOne(NoticeVo vo);

	

}
