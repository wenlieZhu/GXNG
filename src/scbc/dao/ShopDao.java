package scbc.dao;

import java.util.List;
import java.util.Map;

import scbc.bean.Shop;

public interface ShopDao {
	//根据楼层查询此楼层的店铺信息
	public List<Shop> findByCondition(Map<String, Object> map);
}
