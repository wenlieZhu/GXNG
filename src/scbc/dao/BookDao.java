package scbc.dao;

import java.util.List;
import java.util.Map;

import scbc.bean.Book;

public interface BookDao {
	//通过用户编号查询用户的所有订单
	public List<Book> findByCondition(Map<String, Object> map);
	
	//下单
	public int saveBook(Book entity);
	
	//取消订单
	public int deleteBook(Integer bid);
}
