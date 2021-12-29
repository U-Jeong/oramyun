package Oramyun.member.join;

import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class JoinServiceImpl implements JoinService {
	
	@Inject
	private JoinDAO joinDAO;
	
	@Override
	public void memberJoin(MemberVO member) {
		System.out.println("JoinServiceImpl.memberJoin()");
		member.setMember_regDate(new Timestamp(System.currentTimeMillis()));
		joinDAO.memberJoin(member);
	}
	
	
}
