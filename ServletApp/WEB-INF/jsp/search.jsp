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
<header class="navbar bd-navbar">
		<a class="navbar-brand" href="/ServletApp">Home</a>
</header>
<div class="container">
	<form action="#">
		<div class="form-group" style="text-align:center">
			<label for="exampleFormControlTextarea1">検索キーワードを入力</label>
			<div class="form-row justify-content-center">
			 	<div class="col-5">
					<textarea class="form-control" rows="1"></textarea>
				</div>
				<div class="col-2">
				 	<button class="form-control" type="submit">検索</button>
				</div>
			</div>
		</div>
	</form>

	<form action="#">
		<div class="form-group" style="text-align:center">
			<div class="form-row justify-content-center">
			<div class="col-4">
				<label>並び替え</label>
				<br>
				<select name="test" >
					<option value="">選択してください
					<option value="1">購入日
					<option value="2">登録日
					<option value="3">未使用
				</select>
			</div>
			<div class="col-4">
			<label>フィルター</label>
			<br>
			<select name="test" id="parent">
				<option value="">選択してください
				<option value="1">Office用品
				<option value="2">文房具
				<option value="3">PC用品
				<option value="4">その他
			</select>
			<select name="test2" id="child">
				<option value="">選択してください</option>
			</select>
		</div>
		<div class="col-1">
			<button class="form-control" type="submit">表示</button>
		</div>
		</div>
	</div>
	</form>

	<table class="table">
		<thead>
		<tr>
			<td>出品名</td>
			<td>カテゴリ</td>
			<td>出品日</td>
			<td>写真</td>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td><a href="./Search/id1">マウス</a></td>
			<td>マウス</td>
			<td>2020/05/21</td>
			<td>image</td>
		</tr>
		</tbody>
	</table>
</div>
</body>
<script>

document.getElementById("child").onclick = function(){
	child = document.getElementById("child");
	parent = document.getElementById("parent");
	child.onchange = changeParent();

}

function changeParent(){
	var value = parent.value;
	if(value == "1"){
		setOffice();
	}
}

function setOffice(){
	child.textContent = null;
	var office = [
	    {cd:"0", label:"ペン"},
	    {cd:"1", label:"消しゴム"},
	    {cd:"2", label:"ボールペン"}
	  ];

	office.forEach(function(value) {

	    var op = document.createElement("option");
	    op.value = value.cd;
	    op.text = value.label;
	    child.appendChild(op);
	  });
}
</script>
</html>