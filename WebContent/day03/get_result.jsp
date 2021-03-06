<%@page import="koreait.vo.HrdMember"%>
<%@page import="koreait.dao.HrdMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day03 get 요청 처리</title>
<style type="text/css">
td,th{
    border: 1px dotted gray;
}
td.col1_title {
    text-align: center;
    font-weight: bold;
    width: 40%;
    padding: 7px;
}
input[type=text]{
    padding: 5px;
    margin-left: 10px;
}

button {
    padding: 5px 15px;
    margin: 5px;
}

</style>
</head>
<body>
	<%
		String custno = request.getParameter("custno");
		out.print("custno : ");
		out.print(custno);
		out.print("<br>");
		int no = 0;
		if(custno == null) {	//?custno 자체가 없을때 http://localhost:8081/jsp01/day03/get_result.jsp
			out.print("<script>alert('검색값이 없습니다.');location.href='get_test.jsp';");
			out.print("</script>");
		} else {
			try {
				 no = Integer.parseInt(custno);
			}catch(NumberFormatException e) {
			//form 태그 조회값 없이 실행됐을때 http://localhost:8081/jsp01/day03/get_result.jsp?custno=
				out.print("<script>alert('잘못된 검색값입니다.');location.href='get_test.jsp';");
				out.print("</script>");
			}
		}
		HrdMemberDao dao = HrdMemberDao.getInstance();
		HrdMember member = dao.selectOne(no);
		if(member==null) {
			out.print("<script>alert('검색값이 없습니다.');location.href='get_test.jsp';");
			out.print("</script>");
		}
		out.print(member);
	%>
	<br>
	<button onclick="history.back()">뒤로가기</button>
	<br>
<%--
	<input value="<%= member.getCustNo()%>">
	<input value="<%= member.getCustName()%>">
	<input value="<%= member.getPhone()%>">
	<input value="<%= member.getAddress()%>">
	<input value="<%= member.getJoinDate()%>">
	<input value="<%= member.getGrade()%>">
	<input value="<%= member.getCity()%>">
--%>

	<h4 style="text-align: center;">홈쇼핑 회원 수정</h4>
        <form action="member_update.jsp" method="post">  
        <!-- action 설정된 url 로 입력요소에 작성된 데이터를 서버로 전송. 
            form 태그 속성 method="post" 있을때 와 없을 때 차이점이 있습니다.-> 백엔드 배우고 확인.
        -->
        <!-- 화면에 표시하지 않고 입력요소로 전달하고 싶을 때 type="hidden" -->
        <input type="hidden" name="num" value="<%= member.getCustNo()%>">
            <table style="width:70%;margin:auto;">
                <tr>
                    <td class="col1_title">회원번호</td>
                    <td><input type="text" name="num" value="<%= member.getCustNo()%>" disabled></td>  <!-- 입력요소 데이터 식별하는 속성은 name -->
                    <!-- disabled 가 설정되어 있으면 파라미터값 전달안됩니다. -->
                </tr>
                <tr>
                    <td class="col1_title">회원성명</td>
                    <td><input type="text" name="name" value="<%= member.getCustName()%>" disabled></td>
                    <!-- required="required" 를 간단히 표현 -->
                </tr>  
                <tr>
                    <td class="col1_title">회원전화</td>
                    <td><input type="text" name="tel" size="30" value="<%= member.getPhone()%>"></td>
                </tr> 
                <tr>
                    <td class="col1_title">회원주소</td>
                    <td><input type="text" name="addr" size="40" value="<%= member.getAddress()%>"></td>
                </tr>
				<tr>
                    <td class="col1_title">가입일자</td>
                    <td><input type="text" name="reg_date" value="<%= member.getJoinDate()%>" disabled></td>
                </tr>  
                <tr>
                    <td class="col1_title">고객등급<br>[A:VIP,B:일반,C:직원]</td>
                    <td><input type="text" name="grade" value="<%= member.getGrade()%>" disabled></td>
                </tr>  
                <tr>
                    <td class="col1_title">도시코드</td>
                    <td><input type="text" name="city_code" value="<%= member.getCity()%>"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                    	<button>저장</button>
                        <button type="reset">다시쓰기</button>
                        <!-- button로 링크 또는 기능 설정하기
                        onclick 이벤트와 자바스크립트 명령을 이용합니다.
                        locatio.href 는 a태그의 href속성설정과 같은 내용입니다.
                        -->
                    </td>
                </tr>

            </table>
        </form>
</body>
</html>