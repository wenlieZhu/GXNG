package scbc.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import scbc.bean.Good;
import scbc.bean.Shop;
import scbc.dao.BaseDao;
import scbc.dao.GoodDao;

public class GoodDaoImpl extends BaseDao<Good> implements GoodDao {

	@Override
	public List<Good> findByCondition(Map<String, Object> map) {
		List<Good> list=new ArrayList<Good>();
		List<Object> paramList=new ArrayList<Object>();
		StringBuffer sf=new StringBuffer();
		sf.append(" select * from t_good where 1=1 ");
		if(map!=null && map.size()>0){
			if(map.get("gid")!=null){
				sf.append(" and gid=? ");
				paramList.add(map.get("gid"));
			}
			
			if(map.get("sid")!=null){
				sf.append(" and sid=? ");
				paramList.add(map.get("sid"));
			}
			
			if(map.get("gname")!=null){
				sf.append(" and gname=? ");
				paramList.add(map.get("gname"));
			}
		}
		return this.executeQuery2(sf.toString(), paramList.toArray());
	}

	
	@Override
	public Good getEntity(ResultSet rs) {
		Good entity=new Good();
		try {
			entity.setGid(rs.getInt("gid"));
			entity.setGname(rs.getString("gname"));
			entity.setFid(rs.getInt("fid"));
			entity.setSid(rs.getInt("sid"));
			entity.setGprice(rs.getDouble("gprice"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}


}
