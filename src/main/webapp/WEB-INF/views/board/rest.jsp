<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>REST+AJAX게시판</title>
<!-- 스타일, js 라이브러리 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/bb29575d31.js"></script>
<script src="${pageContext.request.contextPath }/JS/board.js"></script>
</head>
<body>

<%--
참조 : https://www.w3schools.com/howto/howto_css_login_form.asp
 --%>

<h2>게시판 - SPA</h2>
<%-- 글 목록 --%>
<div id="list">
	<%-- header --%>
	<div class="d01">
		<div class="left" id="pageinfo"></div>
		<div class="right" id="pageRows"></div>
	</div>
	<div class="clear"></div>
	
	<%-- 목록 --%>
	<form id="frmList" name="frmList">
		<table>
			<thead>
				<th>#</th>
				<th>UID</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</thead>
			<tbody>
			
			</tbody>
		</table>
	</form>
	
	
	<%-- bottom --%>
	<div class="d01">
		<div class="left">
			<button type="button" id="btnDel" class="btn danger">글삭제</button>
		</div>
		<div class="right">
			<button type="button" id="btnWrite" class="btn success">글작성</button>
		</div>
	</div>
</div>

<div class="clear"></div>

<%-- 페이징 --%>
<div class="center">
	<ul class="pagination" id="pagination"></ul>
</div>

<%--글 작성/보기/수정 대화상자 --%>
<div id="dlg_write" class="modal">
	<form class="modal-content animate" id="frmWrite" name="frmWrite" method="post">
		<div class="container">
			<h3 class="title">새글 작성</h3>
			
			<span class="close" title="Close Modal">&times;</span>
			
			<input type="hidden" name="uid" value="0">	<%-- 삭제나 수정을 위해 필요 --%>
			
			<div class="d01 btn_group_header">
				<div class="left">
					<p id="viewcnt"></p>
				</div>
				<div class="right">
					<p id="regdate"></p>
				</div>
				<div class="clear"></div>
			</div>
			
			<label for="subject"><b>글제목</b></label>
			<input type="text" placeholder="글제목(필수)" name="subject" required>
		
			<label for="name"><b>작성자</b></label>
			<input type="text" placeholder="작성자(필수)" name="name" required>
		      
			<label for="content"><b>내용</b></label>
			<textarea placeholder="글내용" name="content"></textarea>

			<div class="d01 btn_group_write">
				<button type="submit" class="btn success fullbtn">작성</button>
			</div>
			<div class="d01 btn_group_view">  			  
				<div class="left">
					<button type="button" class="btn danger" id="viewDelete">삭제</button>
				</div>
				<div class="right">
					<button type="button" class="btn info" id="viewUpdate">수정</button>
				</div>
				<div class="clear"></div>
			</div>	
			<div class="d01 btn_group_update">  			  
				<div>
					<button type="button" class="btn info fullbtn" id="updateOk">수정완료</button>
				</div>
				<div class="clear"></div>
			</div>	

			
			
			
		</div>
	</form>
</div>

</body>
</html>


















