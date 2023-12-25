package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.BOOKDETAILS;

public class BookDAOImpl implements bookDAO{

	private Connection conn;
	
	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addbook(BOOKDETAILS b) {
		boolean f=false;
		
	try {
		String sql="insert into bookdetails(bookname,author,price,bookCategory,photo,status,useremail) values(?,?,?,?,?,?,?)";
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setString(1, b.getBookname());
	ps.setString(2, b.getAuthor());
	ps.setString(3, b.getPrice());
	ps.setString(4, b.getBookCategory());
	ps.setString(5, b.getStatus());
	ps.setString(6, b.getPhotoname());
	ps.setString(7, b.getUseremail());
	
	int i=ps.executeUpdate();
	
	if(i==1) {
		f=true;
	}
	
	
	} catch (Exception e) {
		e.printStackTrace();
	}
		return f;
	}

	public List<BOOKDETAILS> getAllbooks() {
		List<BOOKDETAILS> list=new ArrayList<BOOKDETAILS>();
				BOOKDETAILS b=null;
				
				try {
			String	 sql="select * from bookdetails";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				b=new BOOKDETAILS();
				b.setBookid(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoname(rs.getString(7));
				b.setUseremail(rs.getString(8));
				
				list.add(b);
				
				
				
				
			}
					
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return list;
	}

	public BOOKDETAILS getBookbyid(int id) {
		BOOKDETAILS b=null;
		 try {
			 
			 String sql="select * from bookdetails where bookid=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, id);
			 
			 ResultSet rs=ps.executeQuery();
			 
			 while(rs.next()) {
				 b=new BOOKDETAILS();
				 
					b.setBookid(rs.getInt(1));
					b.setBookname(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setPrice(rs.getString(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoname(rs.getString(7));
					b.setUseremail(rs.getString(8));
					
			 }
			 
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	
		return b;
	}

	public boolean updatebook(BOOKDETAILS b) {
		boolean f=false;
		try { 
			String sql="update bookdetails set bookname=?,author=?,price=?,status=? where bookid=? ";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getBookname());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookid());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean delete(int id) {
	boolean f=false;
	try {
		
		String sql="delete from bookdetails where bookid=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
		return false;
	}

	

}
