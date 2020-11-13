package com.mh.org;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mh.org.bean.Member;
import com.mh.org.db.DBManager;

@WebServlet("/list")
public class List extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public List() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//ctrl + shift + o import 자동 가져오기 및 정리
		DBManager dbm=new DBManager();
		//ctrl +1 
		ArrayList<Member> al= dbm.select();
		request.setAttribute("list", al);
		
		RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
