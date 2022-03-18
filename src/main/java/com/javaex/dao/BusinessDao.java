package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BizstorecateVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.DeliveryVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.MenuOptioncateVO;
import com.javaex.vo.MenuVo;
import com.javaex.vo.MenucateVo;
import com.javaex.vo.OpentimeVo;
import com.javaex.vo.StorecateVo;
import com.javaex.vo.UserVo;

@Repository
public class BusinessDao {

	@Autowired
	private SqlSession sqlSession;

	// 한명 회원 정보 가져오기
	public UserVo getUser(int no) {
		System.out.println("[BusinessDao.getuser");
		return sqlSession.selectOne("Business.getUser", no);
	}

	// 한명 가게 정보 가져오기
	public BusinessVo getStore(int storeNo) {
		System.out.println("[BusinessDao.getUser");
		return sqlSession.selectOne("Business.getStore", storeNo);
	}
	
	//배달지역 추가
	public int saveDeliveryArea(DeliveryVo deliveryVo) {
		System.out.println("[BusinessDao.saveDeliveryArea]");
		int count = sqlSession.insert("Business.saveDeliveryArea", deliveryVo);
		System.out.println("[" + count + "배달지역이 추가 되었습니다(BusinessDao)");
		return count;
	}
	
	//배달지역 하나 가져오기
	public DeliveryVo getDeliveryArea(int deliNo) {
		System.out.println("[BusinessDao.getDeliveryArea");
		System.out.println(deliNo);
		return sqlSession.selectOne("Business.getDeliveryArea", deliNo);
	}
	
	//가게 카테고리 리스트 가져오기
	public List<StorecateVo> StorecateList() {
		System.out.println("[BusinessDao.StorecateList");
		return sqlSession.selectList("Business.StorecateList");
	}
	
	// 메뉴 하나 가져오기
	public MenuVo getmenu(int menuNo) {

		return sqlSession.selectOne("Business.getmenu", menuNo);
	}
	
	
	// 영업시간 삭제
	public int storetimedelete(int storeno) {
		System.out.println("[BusinessDao.storetimedelete");
		int count = sqlSession.delete("Business.storetimedelete", storeno);
		System.out.println("[" + count + "건이 영업시간이 삭제되었습니다(BusinessDao)");
		return count;
	}
	
	
	// 영업시간 추가
	public int storetimeinsert(OpentimeVo opentimeVo) {
		System.out.println("[BusinessDao.storetimeinsert");
		System.out.println(opentimeVo);
		int count = sqlSession.insert("Business.storetimeinsert", opentimeVo);
		System.out.println("[" + count + "건이 영업시간이 추가되었습니다(BusinessDao)");
		return count;
	}

	// 유저 업데이트
	public int UserUpdate(UserVo userVo) {
		System.out.println("[BusinessDao.Userupdate()]");
		System.out.println("Business userVo = " + userVo);
		int count = sqlSession.update("Business.Userupdate", userVo);
		System.out.println("[" + count + "건이 유저 정보가 수정되었습니다(BusinessDao)");
		return count;
	}

	// 가게 업데이트
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

	// 옵션 카테고리 추가
	public int menuOptioncateadd(MenuOptioncateVO menuOptioncate) {
		System.out.println("[BusinessDao.menuOptioncateadd]");
		int count = sqlSession.insert("Business.menuOptioncateadd", menuOptioncate);
		System.out.println("[" + count + "건이 메뉴  옵션 카테고리가 추가 되었습니다(BusinessDao)");
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

	// 메뉴 옵션 카테고리 리스트
	public List<MenuOptioncateVO> menuOptioncateList(MenuOptioncateVO menuOptioncate) {
		System.out.println("menuOptioncateList Dao");
		return sqlSession.selectList("Business.menuOptioncateList", menuOptioncate);
	}

	// 메뉴 옵션 등록
	public int cateOption(MenuOptionVo mnuOptionVo) {
		System.out.println("cateOption Dao");
		System.out.println(mnuOptionVo);
		int count = sqlSession.insert("Business.cateOption", mnuOptionVo);
		System.out.println("[" + count + "메뉴옵션이 등록 되었습니다(BusinessDao)");
		return count;
	}

	// 메뉴 리스트
	public List<MenuVo> menulistpar(MenuVo menuVo) {
		System.out.println("menulist Dao");
		return sqlSession.selectList("Business.menulistpar", menuVo);
	}
	
	/*
	// 가게 카테고리 다대다 추가
	public int storecate(BizstorecateVo BizstorecateVo) {

		System.out.println("[BusinessDao.storecate()]");
		int count = sqlSession.insert("Business.storecate", BizstorecateVo);
		System.out.println("[" + count + "건이 가게 카테고리 다대다가 추가 되었습니다(BusinessDao)");
		return count;
	}
	*/
}
