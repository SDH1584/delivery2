package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.PointDao;
import com.javaex.vo.PointVo;

@Service
public class PointService {
	@Autowired
	PointDao pointdao;

	public List<PointVo> getPointList(int no) {
		System.out.println("PointService.getPointList()");
		List<PointVo> pointVo = pointdao.selectPointList(no);
		return pointVo;
	}

	public int getAllPoint(int no) {
		System.out.println("pointservice.getAllpoint()");
		int allPoint = pointdao.selectAllPoint(no);
		return allPoint;
	}

	public int getValidityPoint(int no) {
		System.out.println("PointService.getvalidityPoint()");
		int validityPoint = pointdao.selectValidityPoint(no);
		return validityPoint;
	}
}
