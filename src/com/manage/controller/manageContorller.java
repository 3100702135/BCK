package com.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.system.entity.User;
@Controller
@RequestMapping("/manage") 
public class manageContorller extends BaseController{
	/**
	 * ·ÃÎÊµÇÂ¼Ò³
	 * @return
	 */
	@RequestMapping(value="/login")
	public ModelAndView login()throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("manage/main");
		return mv;
	}
	 
	/**
	 * ·ÃÎÊµÇÂ¼Ò³
	 * @return
	 */
	@RequestMapping(value="/to_login")
	public String toLogin(){
		return "redirect:/jsp/manage/login.html";  
	}
}
