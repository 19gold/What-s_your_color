var iidd = document.getElementById('id');
var i = 0;
var ckinfo = [ 0, 0 ];
var n;
var changedid;
var pwchk = false;
document.idchk = false;
// 아이디 중복 여부를 판단
function openConfirmid(inputid) {
	// 아이디를 입력했는지 검사
	if (inputid.id.value == "") {
		alert("중복확인에러 : 아이디를 입력하세요");
		return;
	}
	// url과 사용자 입력 id를 조합합니다
	url = "checkid.jsp?id=" + inputid.id.value;
	// 새로운 윈도우 열기
	open(
			url,
			"confirm",
			"toolar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=310, height=180");
}
/*
 * function ckid(n) { console.log("함수 불러짐"); if (n == 0) { console.log("아이디 다른거로
 * 바꾸기"); } else if (n == 1) { console.log("아이디 확인 완료!");
 *  } ckinfo[0] = n; }
 */

	

function cntpw() {
	var pw = document.getElementById('psw');
	if ((pw.value).length < 6 || (pw.value).length > 16) {
		alert("비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.");
		pw.focus();
	}
}// 비밀번호 글자수 확인
function repeatpw() {
	var pw = document.getElementById('psw');
	var confirmPW = document.getElementById('pwCheck');
	var bt = document.getElementById('btnJoin');
	if (6 <= pw.value.length <= 16 && 6 <= confirmPW.value.length <= 16) {
		if (pw.value == confirmPW.value) {
			confirmPW.style.border = '3px solid green';
			i = 1;
			console.log("일치");
			pwchk = true;
			// ckinfo[1] = 1;
			// bt.type = "submit";
			/*
			 * for(var g = 0;g<=ckinfo.length;g++) console.log(ckinfo[g]);
			 */
		} else {
			confirmPW.style.border = '3px solid red';
			confirmPW.focus();
			console.log("불일치");
			bt.type = "button";
			i = 0;
			pwchk = false;
			// ckinfo[1] = 0;
		}
	}
}/**/
function confirm() {
	var cnt = 0;
	var pw = document.getElementById('pwCheck');
	console.log("아이디 : " + document.idchk);
	// console.log("비밀번호 : " + pwchk);
	
	if (document.idchk == false) {
		alert("아이디 중복확인을 해주세요");
		iidd.focus();
	} else if (pwchk == false) {
		alert("비밀번호 확인을 해주세요");
		pw.focus();
	} else if (pwchk == true && document.idchk == true) {
		// bt.type = "submit";
		// debugger;
		$('form.signup_form').submit();
	}
}
