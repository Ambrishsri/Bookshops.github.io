 package userservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAOImpl;
import DB.DB;
import entity.User;
@WebServlet("/register")
public class Registerservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String chec=req.getParameter("check");
			
//			System.out.println(name+""+email+""+phone+""+pass+""+chec);
		
		User us=new User();
		us.setName(name);
		us.setEmail(email);
		us.setPhno(phno);
		us.setPassword(password);
		
		
		
		HttpSession session=req.getSession();
		if(chec!=null) {
			UserDAOImpl dao=new UserDAOImpl(DB.getConn());
			boolean f=dao.userRegister(us);
			if(f) {
//				System.out.println("sucess");
				session.setAttribute("succmsg","registration successfully");
				resp.sendRedirect("register.jsp");
			}
			else {
				System.out.println("not");
				session.setAttribute("failmsg","something wrong with server");
				resp.sendRedirect("register.jsp");
			}	
		}else {
			
			session.setAttribute("failmsg","please agree term and condition");
			resp.sendRedirect("register.jsp");
//			System.out.println("please check agree terms and conditions");
		}
		
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
