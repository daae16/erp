<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.sido{
	border : 2px solid white;
	width : 150px; 
	text-align : center;
	font-size : 30px; 
	color : white;
	float : left;
	margin-left: 3px;
	cursor : pointer;
	background-color: #25ABCC;
}
div.selected{
	background-color: #DF4193;
	color : white;
}
div.sido:hover{
background-color: white;
color : #25ABCC;
}
div.gugun{
	border : 1px solid white;
	width : 60px; 
	text-align : center;
	font-size : 25px; 
	float : left;
	color : white;
	background-color: #F46DAE;
	margin-left: 2px;
	cursor : pointer;
}

div.gugun:hover{
background-color: white;
color : #25ABCC;
}
div.dong{
	border : 1px solid white;
	width : 60px; 
	text-align : center;
	font-size : 25px; 
	float : left;
	color : white;
	background-color: #DFD25B;
	margin-left: 2px;
	cursor : pointer;

}
div.dong:hover{
background-color: white;
color : ##DFD25B;
}
</style>
</head>
<body>
<div class="sido 
<c:if test="${param.sido==null}"> 
selected 
</c:if>
">전체</div>
<c:forEach items="${sidoList}" var="sido" varStatus="idx">
	<div class="sido
	<c:if test="${sido==param.sido}"> 
selected 
</c:if>
"
	 onclick="selectSido(this)" data-sido="${sido}">
		<c:if test="${fn:contains(sido,'충청') || fn:contains(sido,'경상') ||
		 fn:contains(sido,'전라') }">
			${fn:substring(sido,0,1)}${fn:substring(sido,2,3)}
		</c:if>
		<c:if test="${!fn:contains(sido,'충청') && !fn:contains(sido,'경상') &&
		 !fn:contains(sido,'전라') }">
			${fn:substring(sido,0,2)}
		</c:if>
	</div>
	<c:if test="${idx.count%9==0}">
		<br>
	</c:if>
</c:forEach>
<br>
<c:forEach items="${gugunList}" var="gugun" varStatus="idx">
	<div class="gugun
	<c:if test="${gugun==param.gugun}"> 
selected 
</c:if>
" onclick="selectGugun(this)" data-gugun="${gugun}">
		${fn:substring(gugun,0,2)}
	</div>
	<c:if test="${idx.count==10}">
		<br>
	</c:if>
	</c:forEach>
	<c:forEach items="${dongList}" var="dong" varStatus="idx">
	<div class="dong
	<c:if test="${dong==param.dong}"> 
selected 
</c:if>
" onclick="selectDong(this)" data-dong="${dong}">
		${fn:substring(dong,0,3)}
	</div>
	<c:if test="${idx.count==10}">
		<br>
	</c:if>
</c:forEach>

<script>
function selectSido(sidoObj){
	var sido = sidoObj.getAttribute('data-sido');
	location.href='/div?sido='+ sido;
}
function selectGugun(gugunObj){
	var gugun = gugunObj.getAttribute('data-gugun');
	var sido =  document.querySelector('div.selected[data-sido]').getAttribute('data-sido')
	location.href='/div?sido='+ sido + '&gugun='+ gugun;
}
function selectDong(dongObj){
	var dong = dongObj.getAttribute('date-dong');
	var gugun = document.querySelector('div.selected[data-gugun]').getAttribute('data-gugun')
	var sido =  document.querySelector('div.selected[data-sido]').getAttribute('data-sido')
	location.href='/div?sido='+ sido + '&gugun='+ gugun + '&dong=' + dong;
}
</script>
</body>
</html>