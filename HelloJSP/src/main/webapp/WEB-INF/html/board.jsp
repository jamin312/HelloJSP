<%@page import="com.yedam.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="includes/header.jsp" />

<h3>글상세화면(board.jsp)</h3>

<c:if test="${!empty msg }">
<div style="color: red;">${msg}</div>
</c:if>

<c:if test="${not empty msg}">
  <script>
    alert('${msg}');
  </script>
</c:if>

<table class="table">
	<tr>
		<th>글번호</th>
		<td><c:out value="${board_info.boardNo }" /></td>
		<th>조회수</th>
		<td><c:out value="${board_info.viewCnt }" /></td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan='3'><c:out value="${board_info.title }" /></td>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan='3'><c:out value="${board_info.content }" /></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><c:out value="${board_info.writer }" /></td>
		<th>작성일시</th>
		<td><fmt:formatDate pattern="yyyy-MM-dd EEEE a hh:mm:ss"
				value="${board_info.creationDate }" /></td>
	</tr>
	<tr>
		<td colspan="3" align="right">
			<form action="modifyForm.do">
				<input type="hidden" name="bno" value="${board_info.boardNo}">
				<input type="hidden" name="page" value="${param.page}">
				<input type="hidden" name="searchCondition" value="${param.searchCondition}">
				<input type="hidden" name="keyword" value="${param.keyword}">
				<input type="submit" value="수정" class="btn btn-success">
			</form>
		</td>
		<td colspan="3" align="left">
			<form action="removeBoard.do">
				<input type="hidden" value="${board_info.boardNo }" name="bno">
				<button type="submit" class="btn btn-danger" ${logId eq board_info.writer ? '' : 'disabled'}>삭제</button>
			</form>
		</td>
	</tr>
</table>



<jsp:include page="includes/footer.jsp" />