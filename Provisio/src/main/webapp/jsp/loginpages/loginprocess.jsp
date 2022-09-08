<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@page import="beans.LoginDao"%>  
<jsp:useBean id="obj" class= "beans.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
	boolean status=LoginDao.validate(obj);  
	if(status){  
		
		session.setAttribute("session","TRUE");  
	} else {  
		session.setAttribute("session","TRUE"); 
%>  
<jsp:include page="../index.jsp"></jsp:include>  
<%  
}  
%>  