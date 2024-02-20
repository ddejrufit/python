<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:if test="${curPage != 1 }">
		<table id="snsL">
			<tr>
				<td align="center" onclick="snsPageChange(${curPage - 1 });">&lt;</td>
			</tr>
		</table>
	</c:if>

	<c:if test="${curPage != allPageCount }">
		<table id="snsR">
			<tr>
				<td align="center" onclick="snsPageChange(${curPage + 1 });">&gt;</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${sessionScope.loginMember != null }">
		<table id="snsWriteArea">
			<tr>
				<td>
					<form action="sns.search" name="snsSearchForm"
						onsubmit="return snsSearchCheck();" method="post">
						<table id="snsSearchTable">
							<tr>
								<td id="sstTd1"><input name="search" maxlength="10"
									autocomplete="off" placeholder="찾기"></td>
								<td id="sstTd2"><input type="image"
									src="resources/img/search.png" style="width: 30px;"></td>
							</tr>
						</table>
					</form>
				</td>
					<td id="snsWriteAreaSummoner" align="center" rowspan="2"
					style="background-color: #F44336; border-radius: 0px 20px 20px 0px; cursor: pointer;">
					<img src="resources/img/menu.png"></td>
			</tr>
			<tr>
				<td align="center">
					<form action="sns.write" name="snsWriteForm"
						onsubmit="return snsWriteCheck();" method="post">
						<input name="token" value="${token }" type="hidden">
						<table id="snsWriteTable">
							<tr>
								<td id="swtTd1"><textarea name="k_txt" placeholder="뭐"
										maxlength="250"></textarea></td>
								<td id="swtTd2"><input type="image"
									src="resources/img/write.png" style="width: 30px;"></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</c:if>
	<c:forEach var="sm" items="${msgs }">
		<table class="sm" style="box-shadow: 5px 5px 5px ${sm.k_color};">
			<tr>
				<td rowspan="5" align="center" valign="top" style="width: 95px;">
					<img class="smPhoto" src="resources/img/${sm.k_photo }"
					style="box-shadow: 3px 3px 3px ${sm.k_color};">
				</td>
				<td class="smOwner" style="color: ${sm.k_color};">${sm.k_id }</td>
			</tr>
			<tr>
				<td class="smDate" align="right"><fmt:formatDate
						value="${sm.k_when }" type="both" dateStyle="long"
						timeStyle="short" /></td>
			</tr>
			<tr>
				<td class="smTxt"><textarea id="formerTxt">${sm.k_txt }</textarea></td>
			</tr>
			<tr>
				<td id="smReplyArea"><c:forEach var="sr"
						items="${sm.k_replys }">
						<c:choose>
							<c:when test="${sr.kr_owner == sessionScope.loginMember.k_id }">
								<span ondblclick="snsReplyDelete('${sr.kr_no}');"
									class="smReplyID" style="color:${sm.k_color}; cursor:pointer;">${sr.kr_owner }</span>
							</c:when>
							<c:otherwise>
								<span class="smReplyID" style="color:${sm.k_color}">${sr.kr_owner }</span>
							</c:otherwise>
						</c:choose>
						${sr.kr_txt }(<fmt:formatDate value="${sr.kr_when }" type="both"
							dateStyle="short" timeStyle="short" />)<br>
					</c:forEach> <c:if test="${sessionScope.loginMember != null }">
						<hr color="${sm.k_color }">
						<form action="sns.reply.write" method="post"
							onsubmit="return snsReplyWriteCheck(this);">
							<input name="token" value="${token }" type="hidden"> <input
								name="kr_k_no" value="${sm.k_no }" type="hidden"> <span
								class="smReplyID" style="color:${sm.k_color}">${sessionScope.loginMember.k_id }</span>
							<input name="kr_txt"
								style="border-bottom:${sm.k_color} solid 2px;" maxlength="100"
								placeholder="댓" autocomplete="off">
							<button style="color: ${sm.k_color}; font-weight:900;">쓰기</button>
						</form>
					</c:if></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><c:if
						test="${sm.k_id == sessionScope.loginMember.k_id }">
						<button onclick="snsMsgUpdate(${sm.k_no}, '${sm.k_txt }');"
							style="color: ${sm.k_color};" id="updateBtn">수정</button>
						<button onclick="snsMsgDelete(${sm.k_no});"
							style="color: ${sm.k_color};">삭제</button>
					</c:if></td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>