package com.ttn.ticketApp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ClientBooking
 */
public class ClientBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text");
		PrintWriter  out=response.getWriter();
		String PlatformName=request.getParameter("pname");
		String Date=request.getParameter("date");
		String NumberOfPerson=request.getParameter("numberofperson");
		int Durration=Integer.parseInt(request.getParameter("durration"));
		if(PlatformName.isEmpty()|Date.isEmpty()|NumberOfPerson.isEmpty()|Durration==0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("ClientBooking.jsp");
			out.println("<center><h2><ul><font color=red>Please Fill all the Field</font></ul></h2></center>");
			rd.include(request,response);
		}
		else
		{
			int ticketId=0;
			ticketId++;
			int pay=Durration*5;
			request.setAttribute("pay",""+pay);
			request.setAttribute("ptid", ""+ticketId);
			RequestDispatcher rd = request.getRequestDispatcher("Payment.jsp");
			
		}
		
	}

}
