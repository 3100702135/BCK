package com.system.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.common.service.MailService;
import com.common.util.ResultJson;
import com.common.util.Tools;
import com.manage.controller.BaseController;
import com.system.entity.User;
import com.system.service.UserService;
@Controller
@RequestMapping("/system") 
public class UserController extends BaseController{
	static Logger	          logger	       = Logger.getLogger(UserController.class);
	@Resource(name="userService")
	private UserService userService;
	@Resource(name = "mailService")
	private MailService mailService;
	
    private static  String MESSAGE_EMAIL_TO = "18721499786@163.com";
    private static  String MESSAGE_SUBJECT = "你有新留言，请及时回复";
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/toLogin")
	@ResponseBody
	public Map<String,Object> toLogin(String userName,String passWord,HttpServletRequest request, HttpServletResponse response){
		ResultJson result = new ResultJson();
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
				HttpSession httpSession = request.getSession();

				httpSession.setAttribute("userId", user.getUserId());
				httpSession.setAttribute("userName", user.getUserName());
				httpSession.setAttribute("userId", user.getPassWord());
				
		        Cookie cookieName=new Cookie("userName", user.getUserName());
		        Cookie cookieWord=new Cookie("passWord", user.getPassWord());  
		        response.addCookie(cookieName);
		        response.addCookie(cookieWord);

				map.put("userName", user.getUserName());
				map.put("userId", user.getUserId());
				map.put("result", "success");
			}
		} catch (Exception e) {
			map.put("message", e.getMessage());
			map.put("result", "false");
			logger.debug(map);
			e.printStackTrace();
		}

		return map; 
	}
	
	/**
	 * 退出
	 * @return
	 */
	@RequestMapping(value="/loginOut")
	@ResponseBody
	public ModelAndView toLogin(HttpServletRequest request, HttpServletResponse response){
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		Map<String,Object> map = new HashMap<String, Object>();
		try {
			HttpSession httpSession = request.getSession();
			httpSession.removeAttribute("userName");
			httpSession.removeAttribute("userId");
			httpSession.removeAttribute("userId");
			map.put("result", "success");
		} catch (Exception e) {
			map.put("message", e.getMessage());
			map.put("result", "false");
			logger.debug(map);
			e.printStackTrace();
		}
		mv.setViewName("system/index");
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
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
			HttpSession httpSession = request.getSession();

			httpSession.setAttribute("userId", user.getUserId());
			httpSession.setAttribute("userName", user.getUserName());
			httpSession.setAttribute("passWord", user.getPassWord());
			
	        Cookie cookieName=new Cookie("userName", user.getUserName());
	        Cookie cookieWord=new Cookie("passWord", user.getPassWord());  
	        response.addCookie(cookieName);
	        response.addCookie(cookieWord);
		} catch (Exception e) {
			map.put("message", e.getMessage());
			map.put("result", "false");
			logger.debug(map);
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
	 * 交流
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
	 * 联系
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
	
	/**
	 * 页面留言
	 * @return
	 */
	@RequestMapping(value="/sendMail")
	public ModelAndView sendMail(String contactName,String contactMail,String contactSubject,String contactMessage,HttpServletRequest request, HttpServletResponse response){
		Map<String,Object> map = new HashMap<String, Object>();
		ModelAndView mv = this.getModelAndView();
		try {
			String message = "留言者：" + contactName + ",我的邮箱：" + contactMail + ",留言内容：" + contactSubject + "," + contactMessage ;
			mailService.sendHtmlMail(this.MESSAGE_EMAIL_TO, this.MESSAGE_SUBJECT, message);
			map.put("result", ResultJson.SUCCESS);
		} catch (Exception e) {
			map.put("result", ResultJson.FAILED);
			map.put("result", e.getMessage());
			e.printStackTrace();
		}
		return new ModelAndView("redirect:index", map);
	}
	
	/**
	 * 访问个人中心
	 * @return
	 */
	@RequestMapping(value="/userCenter")
	public ModelAndView userCenter(){
		User user = new User();
		ResultJson result = new ResultJson();
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/userCenter");
		mv.addObject("user", user);
		mv.addObject("result", ResultJson.SUCCESS);
		return mv; 
	}
	
}
