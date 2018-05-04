package com.common.quartz;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import com.common.service.MailService;
import com.system.controller.UserController;
import com.system.entity.User;
import com.system.service.UserService;

public class ComTask {
	private static final String subject = "smtp.163.com";
	private static final String message = "欢迎注册区块众筹！";
	static Logger	          logger	       = Logger.getLogger(UserController.class);

	@Resource(name = "mailService")
	private MailService mailService;
	@Resource(name = "userService")
	private UserService userService;

	/**
	 * 定时调用接口
	 * 
	 * @throws Exception
	 */
	public void doJob() throws Exception {
		System.out.print("定时任务开始！");
		sendMail();
		System.out.print("定时任务结束！");
	}
	
	/**
	 * 定时调用接口
	 * 
	 * @throws Exception
	 */
	public void sendMail() throws Exception {
		System.out.print("发送邮件开始！");
		try {
			// 1、查询待发送邮件的数据
			User user = new User();
			List<User> users = userService.getUserList(user);
			// 2、发送邮件
			for (User userInfo : users) {
				mailService.sendHtmlMail(userInfo.getMail(), subject, message);
				// 3、回写发送邮件状态
				userInfo.setMailStatus("1");
				userService.editU(userInfo);
				System.out.print("发送邮件成功:" + userInfo.getMail());
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
			System.out.print(e.getMessage());
		}
		System.out.print("发送邮件结束！");

	}
	
	

}
