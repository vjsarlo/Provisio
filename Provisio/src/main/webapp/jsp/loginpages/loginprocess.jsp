<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="beans.LoginDao"%>
<jsp:useBean id="obj" class="beans.LoginBean" />

<jsp:setProperty property="*" name="obj" />

<%
System.out.println("In loginprocess.jsp");
System.out.println(obj.getEmail());
boolean status = LoginDao.validate(obj);
System.out.println(status);

if (status) {
	session.setAttribute("session", "TRUE");
	session.setAttribute("customerID", obj.getCustomerID());
} else {
	session.setAttribute("session", "FALSE");

}
response.sendRedirect("/Provisio/jsp/index.jsp");

%>
