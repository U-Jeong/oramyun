package Oramyun.member.login;

import org.springframework.stereotype.Controller;

import java.io.Console;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Oramyun.member.join.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	@Inject
	private LoginService loginService;
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
			System.out.println("LoginController.login()");
			return "member/login";
	}

	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		System.out.println("LoginController.login()");
		return "member/loginForm";
	}

	@RequestMapping(value = "/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberVO member, HttpSession session) {
		System.out.println("LoginController.loginPro()");
		MemberVO member2 = loginService.memberLogin(member);
		if(member2!=null) {
			session.setAttribute("member_email", member2.getMember_email());
			System.out.println(session.getAttribute("member_email"));
			return "redirect:/main";
		}else {
			return "member/msg";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
	
}
