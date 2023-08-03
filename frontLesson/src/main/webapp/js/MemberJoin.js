/* 정규표현식으로 문자열을 검사하는 기호를 이용하는 패턴 검사
   정규표현식 기호에 대한 기본적인 내용 조사
   EX) 1. 이메일 패턴검사 2. 패스워드를 대문자와 특수문자 1개 이상 포함하고 8글자 이상*/
/*
 *	MemberJoin.html 의 입력 폼 (입력요소)에 사용자가 입력한 값들을 검사하는 자바 스크립트
 * -> 유효성 검사 항목(요구사항) : 이름, 이메일은 필수 입력, 패스워드는 4글자 이상, 나이 범위 15~99
 */

function func_join() { /* '가입하기' 버튼의 onclick 이벤트에 대해 실행하는 함수*/

	/* 자바 스크립트의 변수 선언 키워드 : var, let, const
		 var은 old version 변수 선언 방식
		 const 는 값 변경 불가, 객체 재할당 불가. 일반적으로 요소를 저장하는 변수 형식으로 사용
	*/
	
	let re = new RegExp('[a-zA-Z0-9]+@+[a-zA-Z]+\.[a-z]{2,3}');
	let pass = new RegExp('(?=.*[A-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]){8,}');
	const frm = document.forms[0]
	const name = frm.name
	const email = frm.email
	const password = frm.password
	const age = frm.age
	console.log(frm)
	console.log(name)
	console.log(email)
	console.log(password)
	console.log(age)
	console.log(email.value)
	/* let 은 값 변경 또는 객체 재할당을 할 수 있는 일반적인 변수 */
	let isValid = true		//유효성 통과 여부를 지정하는 변수

	if (name.value == '') {		//텍스트 입력 없으면 ' '
		alert('이름은 필수 입력 입니다.')
		name.focus()		/* name 으로 지정된 입력요소가 focus를 찾음*/
		isValid = false
	} else
		if (!(re.test(email.value))) {					//정규 표현식으로 대체 해보기
			alert('이메일은 필수 입력 입니다.')
			email.focus()
			isValid = false
		}
		else
			if (!(pass.test(password.value))) {		//정규 표현식으로 대체 해보기
				alert('패스워드는 4글자 이상입니다.')
				password.focus()
				isValid = false
			}
			else
				if (age.value <= 15 || age.value >= 99) {
					alert('나이는 15~99 범위의 값이여야 합니다.')
					age.focus()
					isValid = false
				}

	/* 취미를 반드시 1개 이상 선택하도록 검사 : name이 같은 checkbox는 요소를 가져오면 배열*/
	let cnt = 0
	/* 자바 스크립트는 함수를 변수에 대입시켜서 사용하는 형식이 가능. 일급함수라고 함*/
	const func_hobby = function(item) {		//frm.hobby 배열요소를 하나씩 item변수로 저장해서 함수를 실행하기
		if (item.checked) {
			console.log(item)
			cnt++
		}
	}	//메소드 또는 함수의 인자로 함수가 쓰일때 콜백함수(callback 함수 라고 함)
	frm.hobby.forEach(func_hobby)

	if (cnt == 0) {
		alert('취미는 1개 이상 선택해주세요')
		isValid = false
	}

	if (isValid) {	//유효성 통과하여 제출
		frm.action = 'success.html' //action 속성이 form 태그에서 지정되어 있지 않으면 필수 작성
		frm.submit()				//submit
	} else {
		alert('유효성 통과 실패!')
	}
}