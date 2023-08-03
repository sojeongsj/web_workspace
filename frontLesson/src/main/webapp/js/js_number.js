
const calculate = () => {
	const op1 = document.getElementById('operand1')
	const op2 = document.getElementById('operand2')
	const op = document.getElementById('operator')
	let result;

	switch (op.value) {
		case '+':
			result = Number(op1.value) + Number(op2.value)
			break;
		//Number() : 문자열을 number 타입으로 변환
		//Number('12') 는 12, Number('abc') 는 변환 못하므로 NaN(Not a Number) 리턴
		case '-':
			result = op1.value - op2.value
			break;
		case '*':
			result = op1.value * op2.value
			break;
		case '/':
			result = op1.value / op2.value
			break;
		default:
			alert('알수 없는 연산입니다.')

	}
	console.log(result)
	document.getElementById('result').value = result

	//executeBtn 버튼에 'click' 이벤트 작성하기
}
document.getElementById('executeBtn').addEventListener('click', calculate)

