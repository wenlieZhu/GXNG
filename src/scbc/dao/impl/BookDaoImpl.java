package scbc.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import scbc.bean.Book;
import scbc.dao.BaseDao;
import scbc.dao.BookDao;

public class BookDaoImpl extends BaseDao<Book> implements BookDao {

	@Override
	public List<Book> findByCondition(Map<String, Object> map) {
		List<Book> list=new ArrayList<Book>();
		List<Object> paramList=new ArrayList<Object>();
		StringBuffer sf=new StringBuffer();
		sf.append(" select * from t_book where 1=1 ");
		if(map!=null && map.size()>0){
			if(map.get("bid")!=null){
				sf.append(" and bid=? ");
				paramList.add(map.get("bid"));
			}
			
			if(map.get("uid")!=null){
				sf.append(" and uid=? ");
				paramList.add(map.get("uid"));
			}
		}
		return this.executeQuery2(sf.toString(), paramList.toArray());
	}

	@Override
	public int saveBook(Book entity) {
		String sql="insert into t_book(uid, gid, bnumber) values(?,?,?)";
		Object[] paramsObjs={
			entity.getUid(),
			entity.getGid(),
			entity.getBnumber()
		};
		return this.executeUpdate(sql, paramsObjs);
	}

	@Override
	public int deleteBook(Integer bid) {
		String sql="delete from t_book where bid=?";
		return this.executeUpdate(sql, bid);
	}

	@Override
	public Book getEntity(ResultSet rs) {
		Book entity=new Book();
		try {
			entity.setBid(rs.getInt("bid"));
			entity.setBdate(rs.getDate("bdate"));
			entity.setUid(rs.getInt("uid"));
			entity.setGid(rs.getInt("gid"));
			entity.setBnumber(rs.getString("bnumber"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return entity;
	}

}
