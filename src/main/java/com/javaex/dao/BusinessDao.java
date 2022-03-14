package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BizstorecateVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.MenucateVo;
import com.javaex.vo.StorecateVo;
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

	// 유저 업데이트
	public int UserUpdate(UserVo userVo) {
		System.out.println("[BusinessDao.Userupdate()]");
		System.out.println("Business userVo = " + userVo);
		int count = sqlSession.update("Business.Userupdate", userVo);
		System.out.println("[" + count + "건이 유저 정보가 수정되었습니다(BusinessDao)");
		return count;
	}

	// 유저 업데이트
	public int BusinessUpdate(BusinessVo businessVo) {
		System.out.println("[BusinessDao.BusinessUpdate()]");
		System.out.println("Business businessVo = " + businessVo);
		int count = sqlSession.update("Business.BusinessUpdate", businessVo);
		System.out.println("[" + count + "건이 가게유저 정보가 수정되었습니다(BusinessDao)");
		return count;
	}

	// 메뉴 카테고리 추가

	public int menucateadd(MenucateVo menucateVo) {
		System.out.println("[BusinessDao.menucateadd()]");
		int count = sqlSession.insert("Business.menucateadd", menucateVo);
		System.out.println("[" + count + "건이 메뉴 카테고리가 추가 되었습니다(BusinessDao)");
		return count;
	}

	// 메뉴등록
	public int menuadd(MenuVo menuVo) {
		System.out.println("[BusinessDao.menucateadd()]");
		int count = sqlSession.insert("Business.menuadd", menuVo);
		System.out.println("[" + count + "메뉴가 추가 되었습니다(BusinessDao)");
		return count;
	}

	// 메뉴 카테고리 리스트
	public List<MenucateVo> menucatelist(MenucateVo menucateVo) {
		System.out.println("menucatelist Dao");
		return sqlSession.selectList("Business.menucatelist", menucateVo);
	}

	// 메뉴 카테고리 리스트
	public List<MenuVo> menulistpar(MenuVo menuVo) {
		System.out.println("menulist Dao");
		return sqlSession.selectList("Business.menulistpar", menuVo);
	}

	// 가게 카테고리 추가
	public int storecateadd(StorecateVo storecateVo) {

		System.out.println("[BusinessDao.storecateadd()]");
		int count = sqlSession.insert("Business.storecateadd", storecateVo);
		System.out.println("[" + count + "건이 가게 카테고리가 추가 되었습니다(BusinessDao)");
		return count;
	}

	// 가게 카테고리 다대다 추가
	public int storecate(BizstorecateVo BizstorecateVo) {

		System.out.println("[BusinessDao.storecate()]");
		int count = sqlSession.insert("Business.storecate", BizstorecateVo);
		System.out.println("[" + count + "건이 가게 카테고리 다대다가 추가 되었습니다(BusinessDao)");
		return count;
	}
}
