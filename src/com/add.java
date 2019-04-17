package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public add() {
        super();
      
    }

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("big5");
		
		String DESK=request.getParameter("desk");
		int PRO1=Integer.parseInt(request.getParameter("pro1"));
		int PRO2=Integer.parseInt(request.getParameter("pro2"));
		int PRO3=Integer.parseInt(request.getParameter("pro3"));
		
		porder p1=new porder(DESK,PRO1,PRO2,PRO3);
		
		HttpSession session=request.getSession();
		
		session.setAttribute("P", p1);
		
		response.sendRedirect("addEX/check.jsp");
		
		
	}

}
