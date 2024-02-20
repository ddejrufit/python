function joinCheck() {
	var idInput = document.joinForm.k_id;
	var pwInput = document.joinForm.k_pw;
	var pwChkInput = document.joinForm.k_pwChk;
	var nameInput = document.joinForm.k_name;
	var addr1Input = document.joinForm.k_addr1;
	var addr2Input = document.joinForm.k_addr2;
	var addr3Input = document.joinForm.k_addr3;
	var photoInput = document.joinForm.k_photo;

	// 안썼거나 글자가 빨간색
	if (isEmpty(idInput) || $("#join_k_id").css("color") == "rgb(255, 0, 0)") {
		alert("ID?");
		idInput.value = "";
		idInput.focus();
		return false;
	} else if (isEmpty(pwInput) || notEquals(pwInput, pwChkInput)
			|| notContains(pwInput, "1234567890")) {
		alert("PW?");
		pwInput.value = "";
		pwChkInput.value = "";
		pwInput.focus();
		return false;
	} else if (isEmpty(nameInput)) {
		alert("이름?");
		nameInput.value = "";
		nameInput.focus();
		return false;
	} else if (isEmpty(addr1Input) || isEmpty(addr2Input)
			|| isEmpty(addr3Input)) {
		alert("주소?");
		addr1Input.value = "";
		addr2Input.value = "";
		addr3Input.value = "";
		addr3Input.focus();
		return false;
	} else if (isEmpty(photoInput)
			|| (isNotType(photoInput, "png") && isNotType(photoInput, "gif")
					&& isNotType(photoInput, "jpg")
					&& isNotType(photoInput, "jpeg")
					&& isNotType(photoInput, "bmp")
					&& isNotType(photoInput, "PNG")
					&& isNotType(photoInput, "GIF")
					&& isNotType(photoInput, "JPG")
					&& isNotType(photoInput, "JPEG") && isNotType(photoInput,
					"BMP"))) {
		alert("프사?");
		photoInput.value = "";
		photoInput.focus();
		return false;
	}
	return true;
}

function memberUpdateCheck() {
	var pwInput = document.memberUpdateForm.k_pw;
	var pwChkInput = document.memberUpdateForm.k_pwChk;
	var nameInput = document.memberUpdateForm.k_name;
	var addr1Input = document.memberUpdateForm.k_addr1;
	var addr2Input = document.memberUpdateForm.k_addr2;
	var addr3Input = document.memberUpdateForm.k_addr3;
	var photoInput = document.memberUpdateForm.k_photo;

	if (isEmpty(pwInput) || notEquals(pwInput, pwChkInput)
			|| notContains(pwInput, "1234567890")) {
		alert("PW?");
		pwInput.value = "";
		pwChkInput.value = "";
		pwInput.focus();
		return false;
	} else if (isEmpty(nameInput)) {
		alert("이름?");
		nameInput.value = "";
		nameInput.focus();
		return false;
	} else if (isEmpty(addr1Input) || isEmpty(addr2Input)
			|| isEmpty(addr3Input)) {
		alert("주소?");
		addr1Input.value = "";
		addr2Input.value = "";
		addr3Input.value = "";
		addr3Input.focus();
		return false;
	} else if (isEmpty(photoInput)) {
		return true;
	} else if (isNotType(photoInput, "png") && isNotType(photoInput, "gif")
			&& isNotType(photoInput, "jpg") && isNotType(photoInput, "jpeg")
			&& isNotType(photoInput, "bmp") && isNotType(photoInput, "PNG")
			&& isNotType(photoInput, "GIF") && isNotType(photoInput, "JPG")
			&& isNotType(photoInput, "JPEG") && isNotType(photoInput, "BMP")) {
		alert("프사?");
		photoInput.value = "";
		photoInput.focus();
		return false;
	}
	return true;
}

