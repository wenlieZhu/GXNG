package scbc.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import scbc.bean.User;
import scbc.dao.BaseDao;
import scbc.dao.UserDao;

public class UserDaoImpl extends BaseDao<User> implements UserDao {

	@Override
	public List<User> findByCondition(Map<String, Object> map) {
		List<User> list=new ArrayList<User>();
		List<Object> paramList=new ArrayList<Object>();
		StringBuffer sf=new StringBuffer();
		sf.append(" select * from t_user where 1=1 ");
		if(map!=null && map.size()>0){
			if(map.get("uid")!=null){
				sf.append(" and uid=? ");
				paramList.add(map.get("uid"));
			}
			
			if(map.get("uname")!=null){
				sf.append(" and uname=? ");
				paramList.add(map.get("uname"));
			}
			
			if(map.get("unumber")!=null){
				sf.append(" and unumber=? ");
				paramList.add(map.get("unumber"));
			}
			
			if(map.get("exincludeUid")!=null){
				sf.append(" and uid<>? ");
				paramList.add(map.get("exincludeUid"));
			}
		}
		return this.executeQuery2(sf.toString(), paramList.toArray());
	}

	@Override
	public User getEntity(ResultSet rs) {
		User entity=new User();
		try {
			entity.setUid(rs.getInt("uid"));
			entity.setUname(rs.getString("uname"));
			entity.setUnumber(rs.getString("unumber"));
			entity.setUpassword(rs.getString("upassword"));
			entity.setUrex(rs.getString("urex"));
			entity.setUjob(rs.getString("ujob"));
			entity.setUlive(rs.getString("ulive"));
			entity.setUclass(rs.getString("uclass"));
			entity.setUphone(rs.getString("uphone"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return entity;
	}

	@Override
	public int saveUser(User entity) {
		String sql="insert into t_user(uname, unumber, upassword, urex, ujob, ulive, uclass, uphone) values(?,?,?,?,?,?,?,?)";
		Object[] paramsObjs={
			entity.getUname(),
			entity.getUnumber(),
			entity.getUpassword(),
			entity.getUrex(),
			entity.getUjob(),
			entity.getUlive(),
			entity.getUclass(),
			entity.getUphone()
		};
		return this.executeUpdate(sql, paramsObjs);
	}

	@Override
	public int updateUser(User entity) {
		String sql="update t_user set unumber=?,upassword=?,uname=?,urex=?,ujob=?,ulive=?,uclass=?,uphone=? where uid=?";
		List<Object> paramList=new ArrayList<Object>();
		paramList.add(entity.getUnumber());
		paramList.add(entity.getUpassword());
		paramList.add(entity.getUname());
		paramList.add(entity.getUrex());
		paramList.add(entity.getUjob());
		paramList.add(entity.getUlive());
		paramList.add(entity.getUclass());
		paramList.add(entity.getUphone());
		paramList.add(entity.getUid());
		return this.executeUpdate(sql, paramList.toArray());
	}

	@Override
	public User findById(Integer uid) {
		String sql=" select * from t_user where uid=? ";
		List<User> list=this.executeQuery2(sql, uid);
		return (list!=null && list.size()>0)?list.get(0):null;
	}
	
	@Override
	public boolean login(String a, String b) {
		boolean flag = false;
		UserDao userDao=new UserDaoImpl();
		List<User> list=userDao.findByCondition(new HashMap<String, Object>());
		for(User user:list){
			if(user.getUnumber().equals(a) && user.getUpassword().equals(b)){
				flag=true;
			}
		}
//		try {
//			String sql="select * from t_user where unumber=? and upassword=?";
//			pra=conn.prepareStatement(sql);
//			pra.setString(1, unumber);
//			pra.setString(2, upassword);
//			rs=pra.executeQuery();
//			if(rs.next()){
//				flag=true;
//				rs.getString("unumber");
//				rs.getString("upassword");
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			closeAll(rs, pra, conn);
//		}
		
		return flag;
	}


}
