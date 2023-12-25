package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.BookDAOImpl;
import DB.DB;
import entity.BOOKDETAILS;

@WebServlet("/editbooks")
public class editbook  extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String bookname=req.getParameter("bname");
			String author=req.getParameter("aname");
			String price=req.getParameter("price");
			String status=req.getParameter("bstatus");

			
			BOOKDETAILS b=new BOOKDETAILS();
			b.setBookid(id);
			b.setBookname(bookname);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			BookDAOImpl dao=new BookDAOImpl(DB.getConn());
			boolean f=dao.updatebook(b);
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succmsg","Book update successfully");
				resp.sendRedirect("admin/allbook.jsp");
			}
			else {
				session.setAttribute("failmsg","Something went wrong");
				resp.sendRedirect("admin/allbook.jsp");
			}
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		
	}

}
