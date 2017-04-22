package com.ttn.ticketApp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		if(uname.isEmpty()||pass.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
	}
		else
		{
			UserList userlist=new UserListImplementation();
			User user=userlist.findByUserNameAndPass(uname, pass);
			if(user!=null){
				RequestDispatcher rd = request.getRequestDispatcher("ClientBooking.jsp?uname="+user.getFirstName());
				rd.forward(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
				out.println("<font color=red><center>Invalid User!!</center></font>");
				rd.include(request, response);
			
		}
	}
	}
}


