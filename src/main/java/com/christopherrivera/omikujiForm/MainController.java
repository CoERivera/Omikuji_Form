package com.christopherrivera.omikujiForm;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String index(HttpSession session) {
		return "index.jsp";
	}
}
