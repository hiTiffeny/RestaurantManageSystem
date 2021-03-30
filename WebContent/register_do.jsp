<%@page import="RCMS.dao.impl.UserDaoImpl"%>
<%@page import="RCMS.dao.UserDao"%>
<%@page import="RCMS.util.MD5Util"%>
<%@page import="RCMS.vo.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
UserDao userdao = new UserDaoImpl();
String name=request.getParameter("name");
String password=request.getParameter("password");
long id = Long.parseLong(request.getParameter("id"));
String tell=request.getParameter("tell");

User user = new User();
user.setName(name);
user.setId(id);
user.setPassword(MD5Util.string2MD5(password));
user.setTell(tell);
user.setType(2);
userdao.add(user);
	

request.getRequestDispatcher("index.jsp").forward(request, response);
%>


</body>
</html>

