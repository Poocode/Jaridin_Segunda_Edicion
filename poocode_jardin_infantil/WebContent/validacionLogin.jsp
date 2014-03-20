<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	String mUsuario = request.getParameter("login");
	String mPassword = request.getParameter("password");
	mPassword = "Cuanquiercosa";
	out.println(mPassword);
%>
