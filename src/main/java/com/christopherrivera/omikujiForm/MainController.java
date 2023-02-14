package com.christopherrivera.omikujiForm;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@GetMapping("/")
	public String homeRedirect(HttpSession session) {
		return "redirect:/omikuji";
	}

	@GetMapping("/omikuji")
	public String index(HttpSession session) {
		return "index.jsp";
	}

	@PostMapping("/send")
	public String send(@RequestParam(value = "num") String num, @RequestParam(value = "city") String city,
			@RequestParam(value = "name") String name, @RequestParam(value = "hobby") String hobby,
			@RequestParam(value = "livingThing") String livingThing, @RequestParam(value = "message") String message,
			HttpSession session) {
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("message", message);
		
		return "redirect:/show";
	}

	@GetMapping("/show")
	public String results(HttpSession session, Model model) {
		model.addAttribute("num", session.getAttribute("num"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("livingThing", session.getAttribute("livingThing"));
		model.addAttribute("message", session.getAttribute("message"));
		
		return "result.jsp";
	}
}
