package com.servlet;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Student;

/**
 * Servlet implementation class BmiServlet
 */
@WebServlet("/BmiServlet")
public class BmiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BmiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// BMI page
		HttpSession session = request.getSession(true);

		String weight = request.getParameter("weight");
		String height = request.getParameter("height");
		System.out.println("here..!!! "+weight+"height: "+height);
        
		double bmi =0;
		try {
			 bmi = ((Double.parseDouble(height)*.025)*(Double.parseDouble(height)*.025)/(Double.parseDouble(weight)*45));
		}
		catch(NumberFormatException ex) {
			System.out.println("Error, must enter a number.");
		}
		System.out.println("BMI: "+bmi);
		Student student = (Student)session.getAttribute("student");
		session.setAttribute("student", student);
		session.setAttribute("bmi", bmi);
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
