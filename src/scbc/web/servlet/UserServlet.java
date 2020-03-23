package scbc.web.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import scbc.bean.User;
import scbc.dao.UserDao;
import scbc.dao.impl.UserDaoImpl;
import scbc.utils.BeanUtils;
import scbc.utils.StringUtils;

/**
 * Servlet implementation class ShareServlet
 */
@WebServlet("/ShareServlet")
public class UserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String opr=request.getParameter("opr");
		if("add".equals(opr)){
			add(request, resp);
		}else if("loadData".equals(opr)){
			loadData(request,resp);
		}else if("loadDataByAdd".equals(opr)){
			loadDataByAdd(request,resp);
		}else if("loadDataByUpdate".equals(opr)){
			loadDataByUpdate(request, resp);
		}else if("update".equals(opr)){
			update(request, resp);
		}else if("saveOrUpdate".equals(opr)){
			update(request, resp);	
		}else if("login".equals(opr)){
			login(request, resp);
		}else if("switchlogin".equals(opr)){
			switchlogin(request, resp);
		}else if("switchloginper".equals(opr)){
			switchloginper(request, resp);
		}else{
			list(request, resp);
		}
	}

	private void switchloginper(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=request.getSession();
		if(session.getAttribute("user")!=null){
			request.getRequestDispatcher("personal.jsp").forward(request, resp);
		}else {
			PrintWriter out=resp.getWriter();
			out.println("<script type='text/javascript'>alert('您还没有登录，请先登录！');location.href='login.jsp';</script>");
		//	request.getRequestDispatcher("index.jsp").forward(request, resp);
		}
		
	}

	private void switchlogin(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=request.getSession();
		if(session.getAttribute("user")!=null){
			request.getRequestDispatcher("shopServlet").forward(request, resp);
		}else {
			PrintWriter out=resp.getWriter();
			out.println("<script type='text/javascript'>alert('您还没有登录，请先登录！');location.href='login.jsp';</script>");
		//	request.getRequestDispatcher("index.jsp").forward(request, resp);
		}
		
		
	}

	private void loadData(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		UserDao userDao=new UserDaoImpl();
		Integer uid=StringUtils.str2Integer(request.getParameter("uid"), false);
		Map<String,Object> map=new HashMap<String, Object>();
		if(uid!=null){
			map.put("uid", uid);
			List<User> list=userDao.findByCondition(map);
			User user=(list!=null && list.size()>0)?list.get(0):null;
			request.setAttribute("user", user);
		}
		String fromMode=request.getParameter("fromMode");
		request.getRequestDispatcher(fromMode+".jsp").forward(request, resp);
	}

	private void list(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		UserDao userDao=new UserDaoImpl();
		List<User> list=userDao.findByCondition(new HashMap<String, Object>());
		request.setAttribute("list", list);
		//PrintWriter out=resp.getWriter();
		request.getRequestDispatcher("personal.jsp").forward(request, resp);
	}

	private void login(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		UserDao userDao=new UserDaoImpl();
		String unumber=request.getParameter("unumber");
		
		String upassword=request.getParameter("upassword");
		PrintWriter out=resp.getWriter();
		if(userDao.login(unumber, upassword)==true){
	//		out.println("<script type='text/javascript'>alert('登录成功！');</script>");
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("unumber", unumber);
			List<User> list=userDao.findByCondition(map);
			User user=(list!=null && list.size()>0)?list.get(0):null;
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
			request.setAttribute("user", user);
		//	System.out.println("学号："+unumber);
			request.getRequestDispatcher("personal.jsp").forward(request, resp);
		//	request.getRequestDispatcher("index.jsp").forward(request, resp);
		} else if(userDao.login(unumber, upassword)==false){
			out.println("<script type='text/javascript'>alert('账号或密码错误，请重新登录！');location.href='login.jsp';</script>");
		} else {
			out.println("<script type='text/javascript'>alert('您没有登录！');location.href='login.jsp';</script>");
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse resp) throws IOException {
		int rows=0;
		String msg="未知错误";
		UserDao userDao=new UserDaoImpl();
		try {
			User newUser=getEntity(request);
			/*if(newUser.getUid() == null){
				throw new RuntimeException("编号不能为空");
			}*/
			if(StringUtils.strIsNull(newUser.getUphone())){
				throw new RuntimeException("手机号不能为空");
			}
			User oldUser=userDao.findById(newUser.getUid());
			BeanUtils.copyProperties(oldUser, newUser);
			rows=userDao.updateUser(oldUser);
			Integer ii=newUser.getUid();
		} catch (Exception e) {
			e.printStackTrace();
			msg="保存失败："+e.getMessage();
		}
		PrintWriter out=resp.getWriter();
		
		if(rows>0){
			out.println("<script type='text/javascript'>alert('修改成功');location.href='userServlet';</script>");
		}else{
			out.println("<script type='text/javascript'>alert('"+msg+"');history.back();</script>");
		}
	}

	private User getEntity(HttpServletRequest request) {
		User user=new User();
		try {
			boolean isMultipart=ServletFileUpload.isMultipartContent(request);
			if(isMultipart){
				FileItemFactory factory=new DiskFileItemFactory();
				ServletFileUpload upload=new ServletFileUpload(factory);
				List<FileItem> fileItemList=upload.parseRequest(request);
				if(fileItemList!=null && fileItemList.size()>0){
					String rootPath=request.getServletContext().getRealPath("/upload");
					System.out.println("rootPath:"+rootPath);
					File parentFile=new File(rootPath);
					if(!parentFile.exists()) parentFile.mkdirs();
					for(FileItem fileItem:fileItemList){
						if(fileItem.isFormField()){
							if("uid".equals(fileItem.getFieldName())){
								user.setUid(StringUtils.str2Integer(fileItem.getString(), false));
							}else if("uname".equals(fileItem.getFieldName())){
								user.setUname(fileItem.getString("utf-8"));
							}else if("unumber".equals(fileItem.getFieldName())){
								user.setUnumber(fileItem.getString("utf-8"));
							}else if("upassword".equals(fileItem.getFieldName())){
								user.setUpassword(fileItem.getString("utf-8"));
							}else if("urex".equals(fileItem.getFieldName())){
								user.setUrex(fileItem.getString("utf-8"));
							}else if("ujob".equals(fileItem.getFieldName())){
								user.setUjob(fileItem.getString("utf-8"));
							}else if("ulive".equals(fileItem.getFieldName())){
								user.setUlive(fileItem.getString("utf-8"));
							}else if("uclass".equals(fileItem.getFieldName())){
								user.setUclass(fileItem.getString("utf-8"));
							}else if("uphone".equals(fileItem.getFieldName())){
								user.setUphone(fileItem.getString("utf-8"));
							}
						}
					}
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	private void loadDataByUpdate(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		UserDao userDao=new UserDaoImpl();
		Integer uid=StringUtils.str2Integer(request.getParameter("uid"), false);
	//	String unumber=request.getParameter("unumber");
		if(uid!=null){
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("uid", uid);
			List<User> list=userDao.findByCondition(map);
			User user=(list!=null && list.size()>0)?list.get(0):null;
			request.setAttribute("user", user);
//			map.clear();
//			map.put("exincludeUid", uid);
//			List<User> mgrList=userDao.findByCondition(map);
//			request.setAttribute("mgrList", mgrList);
		}
		request.getRequestDispatcher("personset.jsp").forward(request, resp);
	}

	private void loadDataByAdd(HttpServletRequest request, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void add(HttpServletRequest request, HttpServletResponse resp) throws IOException {
		int rows=0;
		String msg="未知错误";
		try {
			User entity=new User();
			entity.setUname(request.getParameter("uname"));
			entity.setUnumber(request.getParameter("unumber"));
			entity.setUpassword(request.getParameter("upassword"));
			entity.setUrex(request.getParameter("urex"));
			entity.setUjob(request.getParameter("ujob"));
			entity.setUlive(request.getParameter("ulive"));
			entity.setUclass(request.getParameter("uclass"));
			entity.setUphone(request.getParameter("uphone"));
			if(StringUtils.strIsNull(entity.getUname())){
				throw new RuntimeException("姓名不能为空");
			}
			UserDao userDao=new UserDaoImpl();
			rows=userDao.saveUser(entity);
		} catch(Exception e) {
			e.printStackTrace();
			msg="保存失败："+e.getMessage();
		}
		PrintWriter out=resp.getWriter();
		if(rows>0){
			out.println("<script type='text/javascript'>alert('注册成功');location.href='login.jsp';</script>");
		}else{
			out.println("<script type='text/javascript'>alert('"+msg+"');history.back();</script>");
		}
	}

}
