package scbc.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import scbc.bean.Book;
import scbc.bean.Good;
import scbc.dao.BookDao;
import scbc.dao.GoodDao;
import scbc.dao.impl.BookDaoImpl;
import scbc.dao.impl.GoodDaoImpl;
import scbc.utils.StringUtils;

public class BookServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String opr=request.getParameter("opr");
		if("add".equals(opr)){
			add(request, resp);
		}else if("delete".equals(opr)){
			delete(request, resp);
		}else{
			list(request, resp);
		}
	}

	private void list(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		/*BookDao bookDao=new BookDaoImpl();
		Integer uid=StringUtils.str2Integer(request.getParameter("uid"), false);
		if(uid!=null){
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("uid", uid);
			List<Book> blist=bookDao.findByCondition(map);
			Book book=(blist!=null && blist.size()>0)?blist.get(0):null;
			request.setAttribute("book", book);
		}*/
		/*GoodDao goodDao=new GoodDaoImpl();
		List<Good> goodprice=goodDao.findByCondition(null);
		request.setAttribute("goodprice", goodprice);
		HttpSession session=request.getSession();
		session.getAttribute("user");*/
		BookDao bookDao=new BookDaoImpl();
		List<Book> blist=bookDao.findByCondition(new HashMap<String, Object>());
		request.setAttribute("blist", blist);
		
		HttpSession session=request.getSession();
		session.getAttribute("user");
		GoodDao goodDao=new GoodDaoImpl();
		List<Good> goodprice=goodDao.findByCondition(null);
		request.setAttribute("goodprice", goodprice);
		request.getRequestDispatcher("bookbill.jsp").forward(request, resp);
	}

	private void delete(HttpServletRequest request, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void add(HttpServletRequest request, HttpServletResponse resp) throws IOException {
		int rows=0;
		String msg="未知错误";
		try {
			Book entity=new Book();
			entity.setUid(StringUtils.str2Integer(request.getParameter("uid"), false));
			entity.setGid(StringUtils.str2Integer(request.getParameter("gid"), false));
			entity.setBnumber(request.getParameter("bnumber"));
			if(StringUtils.strIsNull(entity.getBnumber())){
				throw new RuntimeException("数量不能为空");
			}
			BookDao bookDao=new BookDaoImpl();
			rows=bookDao.saveBook(entity);
		} catch (Exception e) {
			e.printStackTrace();
			msg="保存失败："+e.getMessage();
		}
		PrintWriter out=resp.getWriter();
		if(rows>0){
			out.println("<script type='text/javascript'>alert('点餐成功');location.href='bookok.jsp';</script>");
		}else{
			out.println("<script type='text/javascript'>alert('"+msg+"');history.back();</script>");
		}
		
	}
}
