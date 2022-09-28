<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>"/>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"/></script>
<script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>"/></script>

<script type="text/javaScript" language="javascript" defer="defer">
	function cancel() {
		location.href = "<c:url value = '/list.do'/>";
	}
	
</script>
</head>
<body>
	<div class="container">
		<h1>목록 / 수정</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				<label for="">안녕하세요</label>
			</div>
			<div class="panel-body">
				<form action="/mgmt.do" method="post">
				  <div class="mb-3 mt-3">
				    <label for="idx" class="form-label">게시물 아이디</label>
				    <input type="text" class="form-control" id="idx" placeholder="" name="idx">
				  </div>
				  <div class="mb-3">
				    <label for="title" class="form-label">제목</label>
				    <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요" name="title" maxlength="100">
				  </div>
				  <div class="mb-3">
				    <label for="title" class="form-label">등록자/등록일</label>
				    <input type="text" class="form-control" id="writer" placeholder="등록자를 입력하세요 " name="writer" maxlength="15" style="float:left; width:30%">
				    <input type="text" class="form-control" id="indate" placeholder="등록일을 입력하세요" name="indate" maxlength="8" style="float:left; width:30%">
				  </div>
				  <div class="mb-3 mt-3">
				    <label for="idx" class="form-label">내용</label>
				    <textarea class="form-control" rows="10" id="contents" name="contents" maxlength="1000"></textarea>
				  </div>
				</form>
			</div>
			<div class="panel-footer">
				<button type="button" class="btn btn-default">등록</button>
				<button type="button" class="btn btn-default">수정</button>
				<button type="button" class="btn btn-default" onclick="cancel();">취소</button>
			</div>
		</div>
	</div>
</body>
</html>
