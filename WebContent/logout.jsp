<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
session.removeAttribute("useremail"); 
session.removeAttribute("userid"); 
session.removeAttribute("username"); 
session.invalidate(); 
out.print("<script type='text/javascript'>alert('用户即将退出，确定后退出该页面。');window.location.href='index.jsp'</script>"); 
%> 