package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.OrderListVo;
import com.javaex.vo.UserVo;

@Repository
public class MypageDao {

	@Autowired
	private SqlSession sqlSession;
	
	// 회원정보 수정폼
	public UserVo selectUserByNo(int no) {
		System.out.println("mypageDao/selectUserByNo");
		return sqlSession.selectOne("mypage.selectUserByNo", no);
	}
	
	// 주문내역 리스트
	public List<OrderListVo> selectOrderList(int no) {
		System.out.println("mypageDao/selectOrderList");
		return sqlSession.selectList("mypage.selectOrderList", no);
	}
	
	// 주문 상세 페이지
	public List<OrderListVo> selectOrderDetail(OrderListVo orderListVo) {
		System.out.println("mypageDao/selectOrderDetail");
		return sqlSession.selectList("mypage.selectOrderDetail", orderListVo);
	}
	
}
