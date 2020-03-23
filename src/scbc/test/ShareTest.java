package scbc.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import org.junit.Test;

import scbc.bean.Good;
import scbc.bean.Shop;
import scbc.bean.User;
import scbc.dao.GoodDao;
import scbc.dao.UserDao;
import scbc.dao.impl.GoodDaoImpl;
import scbc.dao.impl.UserDaoImpl;

public class ShareTest {
	@Test
	public void testQuery(){
		UserDao userDao=new UserDaoImpl();
		List<User> list=userDao.findByCondition(new HashMap<String, Object>());
		//全表查询
		if(list!=null && list.size()>0){
			for(User user:list){
				System.out.println(user.getUid()+user.getUname());
			}
		}
	}
	
	@Test
	public void Loginning(){
		UserDao userDao=new UserDaoImpl();
		System.out.println(userDao.login("5858", "5656"));
	}
	
	@Test
	public void findUserById(){
		UserDao userDao=new UserDaoImpl();
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("uid", 10003);
		List<User> list=userDao.findByCondition(map);
		for(User user:list){
			System.out.println(user.getUname()+user.getUnumber());
		}
	}
	
	
}
