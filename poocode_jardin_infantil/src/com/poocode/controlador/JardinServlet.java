package com.poocode.controlador;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poocode.entidad.ModeloEndidadLogin;
import com.poocode.jardinDao.JardinInfantilClases;



public class JardinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private JardinInfantilClases mClases;
    public JardinServlet() {
        super();
        mClases = new JardinInfantilClases();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mUsuario = request.getParameter("login");
		String mPassword = request.getParameter("password");
		
		mClases = new JardinInfantilClases();
		ModeloEndidadLogin mLogin = new ModeloEndidadLogin();
		mLogin.setUsuario(mUsuario);
		mLogin.setPassword(mPassword);
		String mRespuesta;
		mRespuesta = mClases.LoginUsuario(mLogin);		
		response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String forward="";		
		if("ok".equals(mRespuesta)){
			forward = "/home.jsp";
			RequestDispatcher view = request.getRequestDispatcher(forward);
	        view.forward(request, response);
		}else{
			out.println("0");
			//response.sendRedirect("/validacionLogin.jsp");
			//forward = "/validacionLogin.jsp";
			//RequestDispatcher view = request.getRequestDispatcher(forward);
	        //view.forward(request, response);
		}
					
	}

}
