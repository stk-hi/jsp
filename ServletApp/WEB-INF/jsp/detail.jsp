<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div class="container">
	<div class="row justify-content-center">
		<div class="col-5">
			<table class="table">
				<tr>
					<td>商品名</td>
					<td>マウス</td>
				</tr>
				<tr>
					<td>カテゴリ</td>
					<td>マウス</td>
				</tr>
				<tr>
					<td>出品日</td>
					<td>2020/02/01</td>
				</tr>
				<tr>
					<td>購入日</td>
					<td>2018/03/12</td>
				</tr>
				<tr>
					<td>出品者</td>
					<td>佐藤公平</td>
				</tr>
				<tr>
					<td>配送方法</td>
					<td>手渡し</td>
				</tr>
			</table>
		</div>
		<div class="col-5">
			<img id="mypic" style="width:100%" src="http://placehold.jp/300x300.png"><br>
			<button id="change">切替</button><br>
		</div>
	</div>
		<div class=" justify-content-center">
			<div class="col-5 justify-content-center">
				<div class="col-3">
					<form action="/ServletApp/Servlet/Search" method="POST" class="form">
						<button type="submit" style="float:left">依頼</button>
					</form>
				</div>
				<div class="col-3">
					<form action="" class="form">
						<button type="submit" style="float:left">キャンセル</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
var pics_src = new Array("http://placehold.jp/300x300.png","http://placehold.jp/400x300.png","http://placehold.jp/500x300.png");
var num = 0;
document.getElementById("change").onclick = function(){
	if (num == 2){
   	 num = 0;
	}else{
    	num ++;
	}
    console.log(num);
	document.getElementById("mypic").src=pics_src[num];
}
</script>
</html>