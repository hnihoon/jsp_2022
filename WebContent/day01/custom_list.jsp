<%@page import="day01.Custom"%>
<%@page import="day01.CustomDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp start4</title>
<style type="text/css">
	table{
		"width:50%";margin:auto;border-collapse:collapse;
	}
	caption{
		text-aling: right;font-size: 0.8em;
	}
	td,th{
		border: 1px solid gray;
		text-align: center;
		padding: 7px 4px;
	}
	th{
		background-color: tomato;
		color:white;
	}
</style>
</head>
<body>
<%
	CustomDao dao = CustomDao.getCustomDao();
	List<Custom> list = dao.selectAll();
%>
	<table style="width:70%;margin:auto;border-collapse: collapse;">
	<tr>
		<th>회원ID</th>
		<th>회원이름</th>
		<th>이메일</th>
		<th>나이</th>
	</tr>
	<!-- 아래의 1행 한명의 MyUser 객체 출력을 list 크기만큼 반복합니다 -->
<%
	for(int i=0; i<list.size(); i++){		//for(MyUser user: list)\
		Custom custom = list.get(i);
%>
	<tr> <!-- MyUser 타입 객체의 데이터를 출력 -->
		<td><%=custom.getCustom_id()%></td>
		<td><%=custom.getName()%></td>
		<td><%=custom.getEmail()%></td>
		<td><%=custom.getAge()%></td>
	</tr>
<%
	}
%>
	</table>
</body>
</html>