package kr.ac.kopo.newmystudy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.newmystudy.model.Quiz;
import kr.ac.kopo.newmystudy.service.QuizService;
import kr.ac.kopo.newmystudy.util.Pager;

@Controller
@RequestMapping("/quiz")
public class QuizController {

	@Autowired
	QuizService service;

	final String path = "quiz/";

	@RequestMapping("/list")
	public String list(Model model, Pager pager, HttpSession session) {
		String mid = (String) session.getAttribute("mid");

		pager.setMid(mid);

		List<Quiz> list = service.list(pager);

		model.addAttribute("list", list);

		return path + "list";
	}

	@GetMapping("/add")
	public String add() {
		return path + "add";
	}

	@PostMapping("/add")
	public String add(Quiz item, HttpSession session) {
		String mid = (String) session.getAttribute("mid");

		item.setMid(mid);

		service.add(item);

		return "redirect:list";
	}

	@GetMapping("/update")
	public String update(Model model, int rnum) {
		Quiz item = service.item(rnum);

		model.addAttribute("item", item);

		return path + "update";
	}

	@PostMapping("/update")
	public String update(Quiz item) {
		service.update(item);

		return "redirect:list";
	}

	@RequestMapping("/delete")
	public String delete(int rnum) {
		service.delete(rnum);

		return "redirect:list";
	}
	
	@RequestMapping("/launcher")
	public String launcher(Model model, HttpSession session, Pager pager) {
		String mid = (String) session.getAttribute("mid");

		pager.setMid(mid);

		List<Quiz> launcherList = service.launcherList(pager);

		model.addAttribute("launcherList", launcherList);

		return path + "launcher";
	}
	


}
