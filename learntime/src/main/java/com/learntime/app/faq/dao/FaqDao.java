package com.learntime.app.faq.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.question.vo.PageVo;


@Repository
public class FaqDao {

	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {

		return sst.insert("faqMapper.faqWrite",vo);
	}

	public int selectCount(SqlSessionTemplate sst) {

		
		return sst.selectOne("faqMapper.selectCount");
	}

	public List<FaqVo> selectFaqList(SqlSessionTemplate sst, FaqVo vo, PageVo pv) {
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
		return sst.selectList("faqMapper.faqList",vo,rb);
	}

	public FaqVo selectOne(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.selectOne("faqMapper.selectOne",vo);
	}

}
