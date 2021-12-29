package Oramyun.member.login;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import Oramyun.member.join.MemberVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Inject
	private LoginDAO loginDAO;
	
	@Override
	public MemberVO memberLogin(MemberVO member) {
		System.out.println("LoginServiceImpl.memberLogin()");
		return loginDAO.memberLogin(member);
	}
	
	

}
