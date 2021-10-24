package kr.ac.kopo.newmystudy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.newmystudy.model.Diary;
import kr.ac.kopo.newmystudy.service.DiaryService;
import kr.ac.kopo.newmystudy.util.Pager;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	final String path = "diary/";

	@Autowired
	DiaryService service;

	@RequestMapping("/list")
	public String list(Model model, Pager pager, HttpSession session) {
		String mid = (String) session.getAttribute("mid");

		pager.setMid(mid);

		List<Diary> list = service.list(pager);

		model.addAttribute("list", list);

		return path + "list";
	}

	@GetMapping("/add")
	public String add() {
		return path + "add";
	}

	@PostMapping("/add")
	public String add(Diary item, HttpSession session) {
		String mid = (String) session.getAttribute("mid");

		item.setMid(mid);

		service.add(item);

		return "redirect:list";
	}

	@RequestMapping("/delete")
	public String delete(int dnum) {
		service.delete(dnum);
		return "redirect:list";
	}

	@GetMapping("/content")
	public String content(int dnum, Model model) {
		Diary item = service.item(dnum);

		model.addAttribute("item", item);

		return path + "content";
	}


	@PostMapping("/content")
	public String update(Diary item) {
		service.update(item);

		return "redirect:list";
	}

}
