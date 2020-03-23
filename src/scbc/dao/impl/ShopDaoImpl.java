package scbc.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import scbc.bean.Shop;
import scbc.dao.BaseDao;
import scbc.dao.ShopDao;

public class ShopDaoImpl extends BaseDao<Shop> implements ShopDao {

	@Override
	public List<Shop> findByCondition(Map<String, Object> map) {
		List<Shop> list=new ArrayList<Shop>();
		List<Object> paramList=new ArrayList<Object>();
		StringBuffer sf=new StringBuffer();
		sf.append(" select * from t_shop where 1=1 ");
		if(map!=null && map.size()>0){
			if(map.get("sid")!=null){
				sf.append(" and sid=? ");
				paramList.add(map.get("sid"));
			}
			
			if(map.get("sname")!=null){
				sf.append(" and sname=? ");
				paramList.add(map.get("sname"));
			}
			
			if(map.get("fid")!=null){
				sf.append(" and fid=? ");
				paramList.add(map.get("fid"));
			}
		}
		return this.executeQuery2(sf.toString(), paramList.toArray());
	}

	@Override
	public Shop getEntity(ResultSet rs) {
		Shop entity=new Shop();
		try {
			entity.setSid(rs.getInt("sid"));
			entity.setSname(rs.getString("sname"));
			entity.setFid(rs.getInt("fid"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}

}
