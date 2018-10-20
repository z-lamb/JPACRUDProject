package com.skilldistillery.monopoly.contollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.monopoly.data.LandDAO;

@Controller
public class LandController {
	
	@Autowired
	private LandDAO landDAO;
	
	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public String index() {
		
		return "index";
	}
}
