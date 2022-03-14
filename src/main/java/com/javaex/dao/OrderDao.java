package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuInfoVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.OrderInfoVo;
import com.javaex.vo.OrderVo;
import com.javaex.vo.SelOptVo;

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
	
	/* 고객 주소, 주소에 따른 배달료 가져오기 */
	public OrderVo getDeliFee(BusinessVo bVo) {
		System.out.println("[OrderDao.getUser()]");
		
		return sqlSession.selectOne("order.selectDeliFee", bVo);
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
	
	/* 메뉴 가져오기 */
	public MenuOptionVo getMenu(MenuOptionVo moVo) {
		System.out.println("[OrderDao.getMenu()]");
		
		return sqlSession.selectOne("order.selectMenu", moVo);
	}
	
	/* 메뉴옵션카테고리리스트 가져오기 */
	public List<MenuOptionVo> getOptionCateList(MenuOptionVo moVo){
		System.out.println("[OrderDao.getOptionCateList()]");
		
		return sqlSession.selectList("order.selectOptionCateList", moVo);
	}
	
	/* 메뉴옵션리스트 가져오기 */
	public List<MenuOptionVo> getOptionList(MenuOptionVo moVo){
		System.out.println("[OrderDao.getOptionList()]");

		return sqlSession.selectList("order.selectOptionList", moVo);
	}
	
	/* 주문그룹 테이블에 정보 삽입 */
	public void addOrderGroup(OrderInfoVo oVo) {
		System.out.println("[OrderDao.addOrderGroup()]");
		
		int count = sqlSession.insert("order.insertOrderGroup", oVo);
		System.out.println(count+"건 삽입 성공(order-group)");
	}
	
	/* 개인주문정보 테이블에 정보 삽입 */
	public void addPersonalOrder(OrderInfoVo oVo) {
		System.out.println("[OrderDao.addPersonalOrder()]");
		
		int count = sqlSession.insert("order.insertPersonalOrder",oVo);
		System.out.println(count+"건 삽입 성공(personal-order)");
	}
	
	/* 주문메뉴 테이블에 정보 삽입 */
	public void addOrderMenu(MenuInfoVo orderMenu) {
		System.out.println("[OrderDao.addOrderMenu()]");
		
		int count = sqlSession.insert("order.insertOrderMenu",orderMenu);
		System.out.println(count+"건 삽입 성공(order-menu)");
	}
	
	/* 주문옵션 테이블에 정보 삽입 */
	public void addOrderOpt(SelOptVo selOpt) {
		System.out.println("[OrderDao.addOrderOpt()]");
		int count = sqlSession.insert("order.insertOrderOption", selOpt);
		System.out.println(count+"건 삽입 성공(order-option)");
	}
	
	/* 참여예약 주문 정보 가져오기 */
	public OrderVo getOrderInfo(int orderNo) {
		System.out.println("[OrderDao.getOrderInfo()]");
		
		return sqlSession.selectOne("order.selectOrderInfo", orderNo); 
	}
	
	
	
}
