package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.DaoSupport;
import com.system.entity.User;


@Service("userService")
public class UserService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	//======================================================================================

	/*
	* 通过login userName passWord获取数据
	*/
	public User getUserInfo(User user)throws Exception{
		return (User)dao.findForObject("UserMapper.getUserInfo", user);
	}
	
	
	/*
	* 保存用户
	*/
	public void saveU(User user)throws Exception{
		dao.save("UserMapper.saveUser", user);
	}
//	/*
//	* 修改用户
//	*/
//	public void editU(PageData pd)throws Exception{
//		dao.update("UserXMapper.editU", pd);
//	}
//	/*
//	* 换皮�?
//	*/
//	public void setSKIN(PageData pd)throws Exception{
//		dao.update("UserXMapper.setSKIN", pd);
//	}
//	/*
//	* 删除用户
//	*/
//	public void deleteU(PageData pd)throws Exception{
//		dao.delete("UserXMapper.deleteU", pd);
//	}

	
}
