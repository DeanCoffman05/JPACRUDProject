package com.skilldistillery.firearmsinventory.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.firearmsinventory.data.FirearmsDao;
import com.skilldistillery.firearmsinventory.entities.Firearm;

@Controller
public class FirearmsController {
	
	@Autowired
	private FirearmsDao firearmsDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String goHome(Model model) {
		model.addAttribute("firearmList", firearmsDao.findAll());
		return "home";
	}
	
	@RequestMapping(path = "createFirearm.do", method = RequestMethod.POST)
	public String createFirearm(Model model, Firearm firearm) {
		Firearm addedFirearm = firearmsDao.create(firearm);
		model.addAttribute("addFirearm", addedFirearm);
		return "addFirearm";
	}
	
	@RequestMapping(path = "getFirearm.do", method = RequestMethod.GET)
	public String getFirearm(Model model, @RequestParam int id) {
		Firearm firearm = firearmsDao.findById(id);
		model.addAttribute("firearm", firearm);
		return "firearmById";
	}
	
	@RequestMapping(path = "updateFirearm.do", method = RequestMethod.POST)
	public String updateFirearm(Model model, Firearm firearm) {
		Firearm updatedFirearm = firearmsDao.update(firearm.getId(), firearm);
		model.addAttribute("updatedFirearm", updatedFirearm);
		return "firearmUpdated";
	}
	
	@RequestMapping(path = "deleteFirearm.do", method = RequestMethod.GET)
	public String deleteFirearm(Model model, @RequestParam int id) {
		boolean deleted = firearmsDao.deleteById(id);
		model.addAttribute("deleted", deleted);
		return "firearmDeleted";
	}

	
}
