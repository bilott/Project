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
	
	$(document).ready(function(){
		
	});

	function add() {
		location.href = "<c:url value = '/mgmt.do'/>";
	}
	
	function view() {
		location.href = "<c:url value = '/view.do'/>";
	}
	
	function setPwd(user_id) {
		if(user_id == "admin") {
			$('#password').val('manager');
		} else if(user_id == "guest") {
			$('#password').val('guest');
		} else if(user_id == "guest2") {
			$('#password').val('guest2');
		}
	}
	
	function check() {
		// alert('1');
		if($('#user_id').val() == '') {
			alert("아이디를 입력하세요.")
			return false;
		}
		if($('#password').val() == '') {
			alert("비밀번호를 입력하세요.")
			return false;
		}
		return true;
	}
</script>

</head>
<body>
	<div class="container">
		<h1>메인화면</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				<form action="<c:url value='/login.do'/>" method="post">
				  <div class="row">
				    <div class="col">
				      <label for="user_id">ID</label>
				      <select class="form-select" aria-label="Default select example" id="user_id" name="user_id" onchange="setPwd(this.value);">
						  <option value="">선택하세요</option>
						  <option value="admin">관리자</option>
						  <option value="guest">사용자</option>
						  <option value="guest2">사용자2</option>
					  </select>
				    </div>
				    <div class="col">
				      <label for="password">Password</label>
				      <input type="password" class="form-control" placeholder="password" name="password" id="password">
				    </div>
				    <button type="submit" class="btn btn-light" onclick="return check()">로그인</button>
				  </div>
				</form>
			</div>
			<div class="panel-body">
				<form>
				  <div class="row">
				    <div class="col">
				      <label for="id">ID</label>
				      <input type="text" class="form-control" placeholder="Enter email" name="id" id="id">
				    </div>
				    <div class="col">
				      <label for="id">Password</label>
				      <input type="password" class="form-control" placeholder="Enter password" name="pswd" id="pwd">
				    </div>
				    <button type="button" class="btn btn-light">검색</button>
				  </div>
				</form>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
					      <tr>
					        <th>게시물번호</th>
					        <th>제목</th>
					        <th>조회수</th>
					        <th>등록자</th>
					        <th>등록일</th>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td><a href="javascript:view();">1</a></td>
					        <td><a href="javascript:view();">안녕하세요</a></td>
					        <td>1</td>
					        <td>관리자</td>
					        <td>2018-12-15</td>
					      </tr>
					      <tr>
					        <td>Mary</td>
					        <td>Moe</td>
					        <td>mary@example.com</td>
					      </tr>
					      <tr>
					        <td>July</td>
					        <td>Dooley</td>
					        <td>july@example.com</td>
					      </tr>
					    </tbody>
					</table>
				</div>
			</div>
			<div class="panel-footer">
				<button type="button" class="btn btn-light" onclick="add();">등록</button>
			</div>
		</div>
	</div>
</body>
</html>
