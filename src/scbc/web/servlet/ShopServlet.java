package scbc.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import scbc.bean.Good;
import scbc.bean.Shop;
import scbc.dao.GoodDao;
import scbc.dao.ShopDao;
import scbc.dao.impl.GoodDaoImpl;
import scbc.dao.impl.ShopDaoImpl;
import scbc.utils.StringUtils;

public class ShopServlet extends HttpServlet {
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
		if("loadGood".equals(opr)){
			loadGood(request, resp);
		}else if("loadShopByd".equals(opr)){
			loadShopByd(request,resp);
		}else if("loadShop".equals(opr)){
			loadShop(request,resp);
		}else{
			listgood(request, resp);
		}
	}

	private void loadShopByd(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		GoodDao goodDao=new GoodDaoImpl();
		Integer gid=StringUtils.str2Integer(request.getParameter("gid"), false);
		if(gid!=null){
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("gid", gid);
			List<Good> list=goodDao.findByCondition(map);
			Good good=(list!=null && list.size()>0)?list.get(0):null;
			request.setAttribute("good", good);
		}
		HttpSession session=request.getSession();
		session.getAttribute("user");
		request.getRequestDispatcher("bookdetail.jsp").forward(request, resp);
		
	}

	private void loadShop(HttpServletRequest request, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void loadGood(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		GoodDao goodDao=new GoodDaoImpl();
		Integer gid=StringUtils.str2Integer(request.getParameter("gid"), false);
		if(gid!=null){
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("gid", gid);
			List<Good> list=goodDao.findByCondition(map);
			Good good=(list!=null && list.size()>0)?list.get(0):null;
			request.setAttribute("good", good);
		}
		ShopDao shopdao=new ShopDaoImpl();
		List<Shop> shoplist=shopdao.findByCondition(null);
		request.setAttribute("shoplist", shoplist);
		request.getRequestDispatcher("booking.jsp").forward(request, resp);
	}

	private void listgood(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		GoodDao goodDao=new GoodDaoImpl();
		List<Good> list=goodDao.findByCondition(new HashMap<String, Object>());
		request.setAttribute("list", list);
		request.getRequestDispatcher("booking.jsp").forward(request, resp);
		
	}
}
