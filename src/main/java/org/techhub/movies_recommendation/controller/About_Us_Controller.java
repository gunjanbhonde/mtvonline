package org.techhub.movies_recommendation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class About_Us_Controller {

	@RequestMapping("/About_Us_page")
	public String About_Us_Page() {
		return "About_Us";
	}

}
