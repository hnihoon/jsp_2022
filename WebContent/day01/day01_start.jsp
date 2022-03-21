<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	<!-- page 1)지시자 : 스크립트릿 실행과 관련된 정보를 설정-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day01_jsp start</title>
</head>
<body>
	<ul>
<%
	//2)스크립트릿 : html 문서안에서 자바코드가 작성되는 부분
	//		출력내용을 제어(for,while,list,if..)하기 위한 자바명령 작성
	String[] names = {"박세리","허재","김연경","안정환"};
	for(int i=0; i<names.length; i++){
%>
	<!-- HTML 태그를 작성할 수 있습니다. -->
	<!-- 3) 표현식 : 데이터를 html문서에 출력(변수,수식결과,메소드리턴값...) -->
	<li><%= names[i]%></li>	<!-- li태그요소가 for반복횟수 만큼 생성. -->	

<%
	} //for종료
%>	
	</ul>
</body>
<!-- JSP 파일에 사용되는 기호 : 1.지시자, 2.스크립트 릿(scriptlet), 3.표현식(변수,계산식,메소드 등
		결과값을 구하는 명령문) 3가지를 기억합시다. -->
</html>