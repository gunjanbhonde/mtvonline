package org.techhub.movies_recommendation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Buy_Plan_Controller {
	
	
	@RequestMapping("/Buy_Plan_Page")
	public String Buy_Plan_Page() {
		return "Buy_Plan_Page";
	}
	
	

}
