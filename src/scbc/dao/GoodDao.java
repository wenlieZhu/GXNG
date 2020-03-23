package scbc.dao;

import java.util.List;
import java.util.Map;

import scbc.bean.Good;

public interface GoodDao {
	//根据店铺号查询菜品信息
	public List<Good> findByCondition(Map<String, Object> map);
	
}
