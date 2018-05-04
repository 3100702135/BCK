package com.common.service;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
@Service("mailService")
public class MailService {
    private static final String HOST = "smtp.163.com";
    private static final Integer PORT = 25;
    private static final String USERNAME = "18721499786@163.com";
    private static final String PASSWORD = "gaojiaqiang521";
    private static final String EMAILFORM = "18721499786@163.com";
    private static JavaMailSenderImpl mailSender = createMailSender();

    
    
    public static void main(String[] args) throws Exception {
    	try
    	{
//    		sendHtmlMail("18721499786@163.com","测试","我是测试数据");
    		System.out.print("发送邮件成功！");

    	}
    	catch(Exception  e)
    	{
    		System.out.print(e.getMessage());
    	}

    }
    /**
     * 邮件发送器
     *
     * @return 配置好的工具
     */
    private static JavaMailSenderImpl createMailSender() {
        JavaMailSenderImpl sender = new JavaMailSenderImpl();
        sender.setHost(HOST);
        sender.setPort(PORT);
        sender.setUsername(USERNAME);
        sender.setPassword(PASSWORD);
        sender.setDefaultEncoding("Utf-8");
        Properties p = new Properties();
        p.setProperty("mail.smtp.timeout", "25000");
        p.setProperty("mail.smtp.auth", "true");
        sender.setJavaMailProperties(p);
        return sender;
    }

    /**
     * 给注册者发送邮件
     *
     * @param to 接受人
     * @param subject 主题
     * @param html 发送内容
     * @throws MessagingException 异常
     * @throws UnsupportedEncodingException 异常
     */
    public  void sendHtmlMail(String to, String subject, String message) throws MessagingException,UnsupportedEncodingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        // 设置utf-8或GBK编码，否则邮件会有乱码
        MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
        messageHelper.setFrom(EMAILFORM, "区块筹");
        messageHelper.setTo(to);
        messageHelper.setSubject(subject);
        messageHelper.setText(message, true);
        mailSender.send(mimeMessage);
    }
    

}