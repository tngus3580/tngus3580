package com.mh.org;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mh.org.bean.Member;
import com.mh.org.db.DBManager;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DBManager dbm = new DBManager();
		String idx = request.getParameter("idx");
		Member member = dbm.selectOne(idx);
		request.setAttribute("member", member);
		RequestDispatcher rd = request.getRequestDispatcher("Update.jsp");
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");// 요청했는 파라메타(name,gender,id) utf-8 형식으로 ...
		response.setContentType("text/html; charset=utf-8"); // 응답하는(웹페이지에서 출력 되는) utf-8...
		
		String idx = request.getParameter("idx");
		String pname = request.getParameter("name");
		String pgender = request.getParameter("gender");
		String pid = request.getParameter("id");
		String ppwd = request.getParameter("pwd");
		String pcpwd = request.getParameter("cpwd");
		String paddr = request.getParameter("addr");
		String pphone = request.getParameter("phone");
		String pemail = request.getParameter("email");
		String[] phobby = request.getParameterValues("hobby");
		String phos="";
		for(String temp : phobby)
			phos+=temp;
		
		DBManager dm = new DBManager();
		dm.update(new Member(idx,pname, pgender, pid, ppwd, pcpwd, paddr, pphone, pemail, phos));
		
		RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
		rd.forward(request, response);
	}

}
