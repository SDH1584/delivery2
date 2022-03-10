package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo;
import com.javaex.vo.DeliveryVo;
import com.javaex.vo.UserVo;

@Repository
public class BusinessDao {

	@Autowired
	private SqlSession sqlSession;

	// 한명 가게 정보 가져오기
	public BusinessVo getUser(int storeNo) {

		System.out.println("[BusinessDao.getUser");
		System.out.println(storeNo);
		return sqlSession.selectOne("Business.getUser", storeNo);
	}

	// 한명 회원 정보 가져오기
	public UserVo getuser(int no) {
		System.out.println("[BusinessDao.getuser");
		return sqlSession.selectOne("Business.getuser", no);
	}
	
	// 배달료 정보 가져오기
	public DeliveryVo getdeli(int storeNo) {
		System.out.println("[BusinessDao.getdeli]");
		return sqlSession.selectOne("Business.getdeli", storeNo);
	}
	
	// 유저 업데이트
	public int UserUpdate(UserVo userVo) {
		System.out.println("[BusinessDao.Userupdate()]");
		System.out.println("Business userVo = "+userVo);
		int count = sqlSession.update("Business.Userupdate", userVo);
		System.out.println("["+count+"건이 수정되었습니다(BusinessDao)");
		return count;
	}
	
	// 유저 업데이트
	public int BusinessUpdate(BusinessVo businessVo) {
		System.out.println("[BusinessDao.BusinessUpdate()]");
		System.out.println("Business businessVo = "+ businessVo );
		int count = sqlSession.update("Business.BusinessUpdate", businessVo );
		System.out.println("["+count+"건이 수정되었습니다(BusinessDao)");
		return count;
}
}
