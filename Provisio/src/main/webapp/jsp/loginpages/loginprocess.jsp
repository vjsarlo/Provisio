<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="beans.LoginDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="obj" class="beans.LoginBean" />

<jsp:setProperty property="*" name="obj" />

<%
session.setAttribute("messages", "");
System.out.println("In loginprocess.jsp");
System.out.println("EMAIL" + obj.getEmail());
System.out.println("ID GUEST" + obj.getIdGuest());
boolean status = LoginDao.validate(obj);
// System.out.println(status);

if (status) {
	session.setAttribute("session", "TRUE");
 	session.setAttribute("customerID", obj.getIdGuest());

	System.out.println("Customer ID in loginprocess.jsp: "  + obj.getIdGuest());
	System.out.println("Customer ID in session "  + session.getAttribute("customerID"));
	
	response.sendRedirect("/Provisio/jsp/index.jsp");

	
} else {
	session.setAttribute("session", "FALSE");
	session.setAttribute("messages", "Invalid credentials!");

	response.sendRedirect("/Provisio/jsp/loginpages/login.jsp");


}


%>
