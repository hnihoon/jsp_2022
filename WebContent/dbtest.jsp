<%@page import="java.sql.Connection"%>
<%@page import="day01.OracleConnectUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = OracleConnectUtil.connect();
	out.print(conn);
%>
</body>
</html>