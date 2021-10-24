package kr.ac.kopo.newmystudy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.newmystudy.model.Member;
import kr.ac.kopo.newmystudy.model.Quiz;
import kr.ac.kopo.newmystudy.service.MemberService;
import kr.ac.kopo.newmystudy.service.QuizService;
import kr.ac.kopo.newmystudy.util.Pager;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	QuizService quizservice;

	private final String path = "admin/";
	
	@RequestMapping("/list")
	public String list(Model model, Pager pager) {
		List<Member> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path+"list";
	}
	
	@GetMapping("/update")
	public String update(Model model, String mid) {
		Member item = service.item(mid);
		
		model.addAttribute("item", item);
		
		return path+"update";
	}
	
	@PostMapping("/update")
	public String update(Member item) {
		service.update(item);
		
		return "redirect:list";
	}
	
	@RequestMapping("/delete")
	public String delete(String mid) {
		service.delete(mid);
		
		return "redirect:list";
	}
	
	
}
