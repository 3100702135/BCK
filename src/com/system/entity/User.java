package com.system.entity;

import java.sql.Timestamp;

/**
 * 
* 类名称：User.java
* 类描述： 
* @author Small QIang
* 作�?单位�?
* 联系方式�?
* 创建时间�2018-03-20
* @version 1.0
 */
public class User{
	private String uuid;		//用户uuid
	private String userId;	//用户ID
	private String userName;	//用户名
	private String passWord; 	//密码
	private String roleId;		//角色id
	private String tel;	//手机号
	private String mail;	//邮箱
	private String ip;		//登录ip
	private String status;		//用户状态
	private String mailStatus;		//邮件发送状态
	private Timestamp lastLoginTime;		//最后登录时间
	private Timestamp lastMotifyTime;	//最后修改时间
	
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}	
	public String getMailStatus() {
		return mailStatus;
	}
	public void setMailStatus(String mailStatus) {
		this.mailStatus = mailStatus;
	}
	public Timestamp getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public Timestamp getLastMotifyTime() {
		return lastMotifyTime;
	}
	public void setLastMotifyTime(Timestamp lastMotifyTime) {
		this.lastMotifyTime = lastMotifyTime;
	}

	
}
