/**
 * 
 */

 const testKakao = () =>{
		//초창기 데이터 api가 XML 제공만 했으므로 이름에 XML이 있음
		const xhr = new XMLHttpRequest()
		
		//요청 파라미터를 쿼리스트링 즉 하나의 문자열로 만들기
		let query = document.getElementById('query').value
		let page = document.getElementById('pageno').value
		let size = document.getElementById('size').value
		
		let sort = document.getElementById('accuracy').checked
		if(sort)	//체크면 true 아니면 false => boolean 타입
			sort = 'accuracy'
		else
			sort = 'recency'
		//'recency'	accuracy(정확도순)
		
		
		
		//요청 url 설정 : 요청 방식 메소드 GET(조회), POST(저장)
		xhr.open('GET',
		`https://dapi.kakao.com/v2/search/vclip?query=${query}&sort=${sort}&page=${page}&size=${size}`)
		//요청 헤더 항목을 추가. 카카오 api에서 정함. 인증과 관련된 항목
		xhr.setRequestHeader('Authorization','KakaoAK c2f5b8cef4cf02f82d4b6dd91b1b7ceb')
		//요청을 보내는 메소드
		xhr.send()
		
		let result = ''
		let results =
		//onload는 응답이 오면 발생하는 이벤트. 이벤트 처리 함수 정의
		xhr.onload = function(){
			//요청 처리 결과에 대한 상태 코드 값은 status 프로퍼티로 확인
			let $response = ''
			if (xhr.status == 200){
				alert('kakao 검색 응답을 받았습니다.')
				//xhr.response 는 응답으로 받은 내용 저장하는 xhr의 프로퍼티. xhr.response은 json 문자열
				$response = JSON.parse(xhr.response)	//문자열을 자바스크립트 객체로 변환
				result = $response.documents		//객체의 documents 프로퍼티만 변수에 저장
				results = $response.meta.total_count
				aa = $response.meta
			}
			console.log(result)		//콘솔에 출력
			console.log(results)
			console.log(aa)
			console.log(aa.total_count)
			
			
			//result를 화면에 목록으로 보여주기. item 매개변수는 배열요소를 순차적으로 저장
			document.getElementById('list').innerHTML = ''	//초기화
			result.forEach((item) => {
				const $ul = document.createElement('ul')
				const temp = `<li>${item.author}</li>
							  <li>${item.title}</li>
							  <li>${item.play_time}</li>
							  <li>${item.datetime}</li>
							  <li>
							  <a href='${item.url}' target = '_blank'>
							  <img src = '${item.thumbnail}' width='200px'></a></li>`
				$ul.innerHTML = temp
				document.getElementById('list').appendChild($ul)
				
			})
			 document.getElementById('count').innerHTML = results
		}
		
	}
	document.getElementById('search').addEventListener('click',testKakao)