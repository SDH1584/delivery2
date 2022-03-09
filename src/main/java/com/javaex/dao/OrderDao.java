package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.OrderVo;

@Repository
public class OrderDao {
	
	@Autowired
	SqlSession sqlSession;

	/* 세션값으로 가게별 주문내역 가져오기 */
	public List<OrderVo> getList(int loginStoreNo){
		System.out.println("[OrderDao.getList()]");
		List<OrderVo> orderList = sqlSession.selectList("order.selectOrderList", loginStoreNo);
		return orderList;
	}

	/* 세션값으로 가게정보 가져오기 */
	public BusinessVo getBiz(int loginStoreNo) {
		System.out.println("[OrderDao.getBiz()]");
		
		BusinessVo bizVo = sqlSession.selectOne("order.selectBiz", loginStoreNo);
		return bizVo;
	}

	/* 가게 활성화여부 변경 */ 
	public void updateOnOff(int loginStoreNo) {
		System.out.println("[OrderDao.updateOnOff()]");
		
		int count = sqlSession.update("order.updateOnOff", loginStoreNo);
		System.out.println(count+"건 onoff 수정 성공");
	}
	
	/* 주문상태 변경 */
	public int updateStatus(OrderVo orderVo) {
		System.out.println("[OrderDao.updateStatus()]");
		
		int count=sqlSession.update("order.updateStatus",orderVo);
		System.out.println(count+"건 status 수정 성공");
		return count;
	}
	
	/* 메뉴카테고리리스트 가져오기 */
	public List<MenuOptionVo> getMenuCateList(int storeNo){
		System.out.println("[OrderDao.getMenuCateList()]");
		
		return sqlSession.selectList("order.selectMenuCateList", storeNo);
	}
	
	/* 메뉴리스트 가져오기 */
	public List<MenuOptionVo> getMenuList(int storeNo){
		System.out.println("[OrderDao.getMenuList()]");
		
		return sqlSession.selectList("order.selectMenuList", storeNo);
	}
	
	/* 메뉴옵션카테고리리스트 가져오기 */
	public List<MenuOptionVo> getOptionCateList(int storeNo){
		System.out.println("[OrderDao.getOptionCateList()]");
		
		return sqlSession.selectList("order.selectOptionCateList", storeNo);
	}
	
	/* 메뉴옵션리스트 가져오기 */
	public List<MenuOptionVo> getOptionList(int storeNo){
		System.out.println("[OrderDao.getOptionList()]");
		System.out.println(sqlSession.selectList("order.selectOptionList", storeNo));
		return sqlSession.selectList("order.selectOptionList", storeNo);
	}
	
	
}
