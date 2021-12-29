package Oramyun.member.join;

import org.springframework.stereotype.Repository;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

@Repository
public class JoinDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.MemberMapper";
	
	public void memberJoin(MemberVO member) {
		System.out.println("JoinDAO.memberJoin()");
		sqlSession.insert(namespace+".memberJoin", member);
	}

}
