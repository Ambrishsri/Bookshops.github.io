package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookDAOImpl;
import DB.DB;

@WebServlet("/delete")
public class delete extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
	int id=Integer.parseInt(req.getParameter("id"));
	
	BookDAOImpl dao=new BookDAOImpl((DB.getConn()));
	boolean f=dao.delete(id);
	
	HttpSession session=req.getSession();
	
	if(f) {
		session.setAttribute("succmsg","something went wrong");
		resp.sendRedirect("admin/allbook.jsp");
	}
	else {
		session.setAttribute("failmsg","Book delete successfully...");
		resp.sendRedirect("admin/allbook.jsp");
	}
} catch (Exception e) {
	// TODO: handle exception
}
}
}
