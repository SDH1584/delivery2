package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PointVo;

@Repository
public class PointDao {
	@Autowired
	SqlSession sqlSession;

	public List<PointVo> selectPointList(int no) {
		System.out.println("PointDao.selectPointList()");
		return sqlSession.selectList("point.pointList", no);
	}

	public int selectAllPoint(int no) {
		System.out.println("pointdao.selectAllpoint()");
		return sqlSession.selectOne("point.allPoint", no);

	}

	public int selectValidityPoint(int no) {
		System.out.println("Pointdao.getvalidityPoint()");
		return sqlSession.selectOne("point.validityPoint", no);
	}

}
