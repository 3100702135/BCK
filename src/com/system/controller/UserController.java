package com.system.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.common.util.ResultJson;
import com.common.util.Tools;
import com.manage.controller.BaseController;
import com.system.entity.User;
import com.system.service.UserService;
@Controller
@RequestMapping("/system") 
public class UserController extends BaseController{
	@Resource(name="userService")
	private UserService userService;
	
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/toLogin")
	public ModelAndView toLogin(String userName,String passWord,HttpServletResponse response){
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		User user = new User();
		user.setUserName(userName);
		user.setPassWord(passWord);
		try {
			user=userService.getUserInfo(user);
			if(user.getUserId()!=null)
			{
				mv.setViewName("system/index");
				mv.addObject("user", user);
				mv.addObject("result", ResultJson.SUCCESS);
			}
		} catch (Exception e) {
			mv.addObject("result", ResultJson.FAILED);
			e.printStackTrace();
		}

		return mv; 
	}
	
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping(value="/toRegister")
	public ModelAndView toRegister(String userName,String passWord,String tel,String mail,String ip,HttpServletRequest request){
		User user = new User();
		user.setUuid(get32UUID());
		user.setUserName(userName);
		user.setPassWord(passWord);
		user.setTel(tel);
		user.setMail(mail);
		user.setIp(Tools.getIpAddress(request));
		ModelAndView mv = this.getModelAndView();
		try {
			userService.saveU(user);
//			mv.setViewName("system/index");
			mv.addObject("user", user);
			mv.addObject("message", "注册成功！");
		} catch (Exception e) {
			mv.addObject("user", user);
			mv.addObject("message", "注册失败!"+e.getMessage());
			e.printStackTrace();
		}

		return mv; 
	}
	
	
	/**
	 * 访问首页
	 * @return
	 */
	@RequestMapping(value="/index")
	public ModelAndView toindex(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/index");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
	/**
	 * 白皮书
	 * @return
	 */
	@RequestMapping(value="/overview")
	public ModelAndView overview(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/overview");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
	
	/**
	 * 白皮书
	 * @return
	 */
	@RequestMapping(value="/features")
	public ModelAndView features(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/features");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
	
	/**
	 * 白皮书
	 * @return
	 */
	@RequestMapping(value="/exchange")
	public ModelAndView exchange(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/exchange");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
	
	/**
	 * 白皮书
	 * @return
	 */
	@RequestMapping(value="/team")
	public ModelAndView team(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/team");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
	
	/**
	 * 白皮书
	 * @return
	 */
	@RequestMapping(value="/contact")
	public ModelAndView contact(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/contact");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
}
