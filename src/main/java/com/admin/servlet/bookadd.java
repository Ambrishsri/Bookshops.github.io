package com.admin.servlet;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.BookDAOImpl;
import DB.DB;
import entity.BOOKDETAILS;
@WebServlet("/addbooks")
@MultipartConfig
public class bookadd extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		String bookname=req.getParameter("bname");
		String author=req.getParameter("aname");
		String price=req.getParameter("price");
		String categories=req.getParameter("bcate");
		String status=req.getParameter("bstatus");
		Part part=req.getPart("bookimg");
		String Filename=part.getSubmittedFileName();
		
		BOOKDETAILS b=new BOOKDETAILS(bookname, author, price, categories, status, Filename,"admin");
	BookDAOImpl dao=new BookDAOImpl(DB.getConn());
//	//for getting path while uploading the photo of book
//	String path=getServletContext().getRealPath("")+"book";
////	System.out.println(path);
//	File f=new File(path);
//	part.write(path+File.separator+Filename);
	
		//for storing on db
		boolean f=dao.addbook(b);
//		System.out.println(b);
	HttpSession session=req.getSession();
	
	if(f) {
		String path=getServletContext().getRealPath("")+"book";
		
		File file=new File(path);
       part.write(path+File.separator+Filename);
		
		
		session.setAttribute("succmsg","Book add successfully");
		resp.sendRedirect("admin/addbook.jsp");
	}
	else {
		session.setAttribute("failmsg","Something went wrong");
	resp.sendRedirect("admin/addbook.jsp");
	
	}
//	
	 }catch (Exception e) {
		e.printStackTrace();
	}
	}

}
