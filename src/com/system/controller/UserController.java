package com.system.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@ResponseBody
	public Map<String,Object> toLogin(String userName,String passWord,HttpServletRequest request, HttpServletResponse response){
		ResultJson result = new ResultJson();
		HttpSession httpSession = request.getSession();
		ModelAndView mv = this.getModelAndView();
		User user = new User();
		user.setUserName(userName);
		user.setPassWord(passWord);
		Map<String,Object> map = new HashMap<String, Object>();
		if(userName==null || passWord==null)
		{
			map.put("result", "false");
			return map;
		}
		try {
			user=userService.getUserInfo(user);
			if(user==null)
			{
				map.put("result", "false");
			}
			else if(user.getUserId()!=null && userName.equals(user.getUserName()) && passWord.equals(user.getPassWord()))
			{
				map.put("userName", user.getUserName());
				map.put("userId", user.getUserId());
				map.put("result", "success");
			}
		} catch (Exception e) {
			map.put("message", e.getMessage());
			map.put("result", "false");
			e.printStackTrace();
		}

		return map; 
	}
	
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping(value="/toRegister")
	@ResponseBody
	public  Map<String,Object> toRegister(String userName,String passWord,String tel,String mail,String ip,HttpServletRequest request, HttpServletResponse response){
		User user = new User();
		user.setUuid(get32UUID());
		user.setUserName(userName);
		user.setPassWord(passWord);
		user.setTel(tel);
		user.setMail(mail);
		user.setIp(Tools.getIpAddress(request));
		ModelAndView mv = this.getModelAndView();
		Map<String,Object> map = new HashMap<String, Object>();
		try {
			String userId=userService.saveU(user);
			map.put("userName", user.getUserName());
			map.put("userId", userId);
			map.put("result", "success");

		} catch (Exception e) {
			map.put("message", e.getMessage());
			map.put("result", "false");
			e.printStackTrace();
		}

		return map; 
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
