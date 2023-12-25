package DAO;

import java.awt.List;
import java.util.*;
import entity.BOOKDETAILS;

public interface bookDAO {
public boolean addbook(BOOKDETAILS b);
public java.util.List<BOOKDETAILS> getAllbooks();

public BOOKDETAILS getBookbyid(int id);
public boolean updatebook(BOOKDETAILS b);

public boolean delete(int id);
}
