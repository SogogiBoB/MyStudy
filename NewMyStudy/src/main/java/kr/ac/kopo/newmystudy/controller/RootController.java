package kr.ac.kopo.newmystudy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.newmystudy.model.Member;
import kr.ac.kopo.newmystudy.service.MemberService;


@Controller
public class RootController {
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@Autowired
	MemberService service;

	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signup(Member item) {
		service.add(item);
		
		return "redirect:.";
	}
	
	@ResponseBody
	@RequestMapping("/checkId")
	public String checkId(String mid) {
		if(service.checkId(mid))
			return "OK";
		else
			return "FAIL";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(Member item, HttpSession session) {
		Member member = service.item(item.getMid());
		
		if(member != null) {
			String mid = member.getMid();
			String pw = member.getPw();
			
			if(mid.equals( item.getMid()) && pw.equals(item.getPw()) ) {
				session.setAttribute("member", member);
				session.setAttribute("mid", mid);
				return "redirect:.";
			}
			return "redirect:login";
		}
		return "redirect:login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
}
