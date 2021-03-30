package RCMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import RCMS.exception.PasswordWrongException;
import RCMS.service.UserService;
import RCMS.service.impl.UserServiceImpl;
import RCMS.util.MD5Util;
import RCMS.vo.Role;
import RCMS.vo.User;
import RCMS.web.Page;
import RCMS.web.SalaryOpe;

public class UserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * 得到密码的ajax
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void getPassword(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String password = user.getPassword();
		PrintWriter out = response.getWriter();
		out.write(password);
		out.close();
	}

	public void forPassword(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		Long id = 1l;
		try {
			id = Long.parseLong(idStr);
		} catch (NumberFormatException e) {
		}
		userService.editUserForPassword(id);

		PrintWriter out = response.getWriter();
		out.write("1");
		out.close();

	}

	public void editUser(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String typeStr = request.getParameter("type");
		String tell = request.getParameter("tell");
		String pageNum = request.getParameter("pageNum");
		Integer type = 2;
		String idStr = request.getParameter("id");
		Long id = null;
		try {
			id = Long.parseLong(idStr);
		} catch (NumberFormatException e) {
		}
		try {
			type = Integer.parseInt(typeStr);
		} catch (NumberFormatException e) {
		}
		userService.editUser(id, name, type, tell);

		response.sendRedirect("userServlet?method=toUserManageUI&pageNum="
				+ pageNum);

	}

	public void addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String typeStr = request.getParameter("type");
		String tell = request.getParameter("tell");
		Integer type = 2;
		try {
			type = Integer.parseInt(typeStr);
		} catch (NumberFormatException e) {
		}
		userService.addUser(name, type, tell);

		response.sendRedirect("userServlet?method=toUserManageUI");

	}

	public void toModifyUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		Long id = null;
		try {
			id = Long.parseLong(idStr);
		} catch (NumberFormatException e) {
		}
		List<Role> roles = userService.getRoleList();
		User user = userService.getUserById(id);
		request.setAttribute("roles", roles);
		request.setAttribute("account", user);
		request.getRequestDispatcher("WEB-INF/jsp/user/user-add.jsp").forward(
				request, response);
	}

	public void userAddUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List<Role> roles = userService.getRoleList();
		request.setAttribute("roles", roles);

		request.getRequestDispatcher("WEB-INF/jsp/user/user-add.jsp").forward(
				request, response);
	}

	public void delUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pageStr = request.getParameter("pageNum");
		String idStr = request.getParameter("id");
		Long id = null;
		try {
			id = Long.parseLong(idStr);
		} catch (NumberFormatException e) {
		}
		userService.delUser(id);
		response.sendRedirect("userServlet?method=toUserManageUI&pageNum="
				+ pageStr);

	}

	public void editPassword(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,
			PasswordWrongException {
		HttpSession session = request.getSession();
		String oldPassword = request.getParameter("oldPassword");
		String password = request.getParameter("password");
		User user = (User) session.getAttribute("user");

		String sessionPassword = user.getPassword();
		if ((MD5Util.string2MD5(oldPassword.trim())).equals(sessionPassword)) {
			User userNow = userService.edit(user.getId(), MD5Util.string2MD5(password));
			// user = userNow;
			session.setAttribute("user", userService.getUserById(user.getId()));
			request.setAttribute("message", " 修改成功");
		} else {
			request.setAttribute("message", "原来的密码错误");
		}
		
		request.getRequestDispatcher("WEB-INF/jsp/user/editPassword.jsp")
				.forward(request, response);

	}

	public void toSalaryUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String date = request.getParameter("date");
		String pageNoStr = request.getParameter("pageNo");
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (NumberFormatException e) {
		}

		HttpSession session = request.getSession();
		if (date != null) {
			session.setAttribute("salary_date", date);
		}
		
		date = (String) session.getAttribute("salary_date");
		if (date != null) {
			session.setAttribute("salary_date_f", date.substring(0, 4) + "年"
					+ date.substring(5, 7) + "月");
			SalaryOpe salaryOpe = userService.getSalaryOpe(date, pageNo);
			request.setAttribute("salaryOpe", salaryOpe);
		}

		request.getRequestDispatcher("WEB-INF/jsp/user/salary.jsp").forward(
				request, response);
	}

	public void toFinanceUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/jsp/user/salaryAnalysis.jsp")
				.forward(request, response);
	}

	public void toUserPasswordEditUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/jsp/user/editPassword.jsp")
				.forward(request, response);
	}

	public void quit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("index.jsp");
	}

	UserService userService = new UserServiceImpl();

	public void toUserManageUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pageStr = request.getParameter("pageNum");
		int pageNum = 1;
		try {
			pageNum = Integer.parseInt(pageStr);
		} catch (NumberFormatException e) {
		}
		Page<User> page = userService.getPage(pageNum);
		request.setAttribute("page", page);
		request.getRequestDispatcher("WEB-INF/jsp/user/userManage.jsp")
				.forward(request, response);
	}

	public void toUserIndexUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/jsp/user/userIndex.jsp").forward(
				request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String methodName = request.getParameter("method");
		try {
			Method method = getClass().getDeclaredMethod(methodName,
					HttpServletRequest.class, HttpServletResponse.class);
			method.setAccessible(true);
			method.invoke(this, request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
