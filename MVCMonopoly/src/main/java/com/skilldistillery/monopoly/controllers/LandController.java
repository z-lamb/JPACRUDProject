package com.skilldistillery.monopoly.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.monopoly.data.LandDAO;
import com.skilldistillery.monopoly.entities.Land;

@Controller
public class LandController {

	@Autowired
	private LandDAO landDAO;

	/*
	 * Using View Resolver to return view and clean up code
	 */

	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public String index(Model model) {
		List<Land> allLands = landDAO.getAllLands();
		model.addAttribute("land", allLands);
		return "index";
	}

	@RequestMapping(path = "getLandById.do", method = RequestMethod.GET)
	public String getLandById(Model model, @RequestParam("landId") int id) {
		Land landById = landDAO.getLandById(id);
		model.addAttribute("land", landById);
		return "result";
	}

	@RequestMapping(path = "addLand.do", method = RequestMethod.GET)
	public String addNewLandDirect() {
		return "addNewLand";
	}

	@RequestMapping(path = "newLand.do", method = RequestMethod.POST)
	public String addNewLand(Land land, RedirectAttributes redir) {
		System.out.println(land);
		Land createdLand = landDAO.create(land);
		System.out.println(land);
		if (createdLand == null) {
			redir.addFlashAttribute("newLandFailure", "Failed to add a new Property");
		} else {
			redir.addFlashAttribute("newLandSuccess", createdLand);
		}
		return "redirect:landAdded.do";
	}

	@RequestMapping(path = "landAdded.do")
	public ModelAndView landAdded(@ModelAttribute("newLandSuccess") Land createdLand) {
		ModelAndView mv = new ModelAndView();
		if (createdLand != null) {
			mv.addObject("land", createdLand);
			mv.setViewName("result");
		} else {
			mv.setViewName("addNewLand");
		}
		return mv;
	}
}