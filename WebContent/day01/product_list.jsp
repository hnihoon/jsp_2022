<%@page import="java.time.LocalDate"%>
<%@page import="day01.Product"%>
<%@page import="java.util.List"%>
<%@page import="day01.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	table{
		"width:50%";margin:auto;border-collapse:collapse;
	}
	caption{
		text-align: right;font-size: 0.8em;
	}
	td,th{
		border: 1px solid gray;
		text-align: center;
		padding: 7px 4px;
	}
	th{
		background-color: pink;
		color:white;
	}
</style>
<body>
	<h3>TBL_PRODUCT# 테이블</h3>
<%
	ProductDao pro = ProductDao.getProductDao();
	List<Product> list = pro.selectAll();
%>
	<table>
	<caption>현재시간 : <%=LocalDate.now() %></caption>
		<tr>
			<th>상품코드</th>
			<th>카테고리</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
<%
	for(Product p : list){
%>
		<tr>
			<td><%= p.getPcode() %></td>
			<td><%= p.getCategory() %></td>
			<td><%= p.getPname()%></td>
			<td><%= p.getPrice() %></td>
		</tr>
<%
	}
%>	
	</table>

</body>
</html>