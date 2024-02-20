<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form action="member.join" 
		method="post" enctype="multipart/form-data" onsubmit="return joinCheck();" name="joinForm">
		<table id="joinTbl">
			<tr>
				<td align="center" colspan="2"><input id="join_k_id" name="k_id" placeholder="ID" class="i1" autocomplete="off" autofocus="autofocus" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="password" name="k_pw" placeholder="PW(숫자만 하나 이상)" class="i1" autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="password" name="k_pwChk" placeholder="PW확인" class="i1" autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input name="k_name" placeholder="이름" class="i1" autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<input id="join_k_addr1" name="k_addr1" placeholder="우편번호" class="i1" autocomplete="off"><br>
				<input id="join_k_addr2" name="k_addr2" placeholder="주소" class="i1" autocomplete="off"><br>
				<input name="k_addr3" maxlength="50" placeholder="상세주소" class="i1" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center" style="width:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;프사</td>
				<td><input name="k_photo" type="file" style="font-family: 'b';font-size: 13pt;font-weight:900;"></td>
			</tr>
			<tr>
				<td align="center" style="width:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;권한</td>
				<td><input name="k_role" type="radio" value="s" checked="checked">학생&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="k_role" type="radio" value="m">관리자</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button>가입</button></td>
			</tr>
		</table>
	</form>
</body>
</html>