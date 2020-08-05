<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
/*자바 스크립트는 var , let만 사용 가능 '-'
*선언할수있는ㄷ ㅔ이터타입은 없지만 내부적으로 가지고 있음 //동적언어<- / undefined */
var a; //undefined
a = null; // null
a = 1.1 // number
a = 'str'; //string
a = true; //boolean
a = function(){ //function
   console.log('난 이제 함수');
}
a = new Number(1); //object

var test = function(){
	alert('test');
}
test(); 
test = 1; //test가 다시 변환됨
test();

//자바스크립트의 this는 호출이 아닌 window (최상위)
//자바스크립트는 ==는 내용값 비교(자바는 주소값비교) ===...이건 대체
</script>
</body>
</html>


