package Oramyun.member.login;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import Oramyun.member.join.MemberVO;

@Repository
public class LoginDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.MemberMapper";
	
	public MemberVO memberLogin(MemberVO member) {
		System.out.println("LoginDAO.memberLogin()");
		return sqlSession.selectOne(namespace+".memberLogin", member);
	}

}
