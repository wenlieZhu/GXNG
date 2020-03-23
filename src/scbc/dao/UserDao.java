package scbc.dao;

import java.util.List;
import java.util.Map;

import scbc.bean.User;

public interface UserDao {
	//全表查询
	public List<User> findByCondition(Map<String, Object> map);
	
	public User findById(Integer uid);
	
	public int saveUser(User entity);
	
	public int updateUser(User entity);
	
	public boolean login(String unumber, String upassword);
}
