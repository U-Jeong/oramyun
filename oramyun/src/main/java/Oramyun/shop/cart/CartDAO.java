package Oramyun.shop.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mapper.CartMapper";
	
    public List<CartDTO> cartMoney() {
        return sqlSession.selectList(namespace+".cartMoney");
    }
    //장바구니에 담기
    public void insert(CartDTO cart) {
        sqlSession.insert(namespace+".insert", cart); 
    }

    public List<CartDTO> listCart(String m_num) {
        return sqlSession.selectList(namespace+".listCart", m_num);
    }
 
    public void delete(int cartId) {
        sqlSession.delete(namespace+".delete", cartId);
    }
 
    public void deleteAll(String m_num) {
        sqlSession.delete(namespace+".deleteAll", m_num);
    }
 
    public void update(int cartId) {
    	sqlSession.update(namespace+".update", cartId);
    }
 
    public int sumMoney(String m_num) {
        return sqlSession.selectOne(namespace+".sumMoney", m_num); 
    }
 
    public int countCart(String m_num, int GOODS_NO) {
    	
        return 0;
    }
 
    public void updateCart(CartDTO cart) {
        // TODO Auto-generated method stub
 
    }
 
    public void modifyCart(CartDTO cart) {
        sqlSession.update(namespace+".modify", cart);
    }
    
	public void setUserid(String m_num) {
		// TODO Auto-generated method stub
		
	}


}
