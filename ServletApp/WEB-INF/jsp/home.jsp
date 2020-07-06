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
	<h1>jspTest</h1>
		<form action="#">
			<div class="form-group" style="text-align:center">
				<label for="exampleFormControlTextarea1">検索キーワードを入力</label>
				<div class="form-row justify-content-center" >
				 	<div class="col-5">
						<textarea class="form-control" rows="1"></textarea>
					</div>
					<div class="col-2">
					 	<button class="form-control" type="submit">検索</button>
					</div>
				</div>
			</div>
		</form>
		<table class="table table-borderless">
			<tbody>
   				 <tr>
				     <td> <a href="#" class="btn btn-primary btn-lg" role="button" aria-pressed="true" style="width: 300px; padding: 50px;">出品物一覧</a>  </td>
				     <td> <a href="./Servlet/Search" class="btn btn-primary btn-lg" role="button" aria-pressed="true" style="width: 300px; padding: 50px;">検索</a>  </td>
				     <td> <a href="#" class="btn btn-primary btn-lg" role="button" aria-pressed="true" style="width: 300px; padding: 50px;">取引一覧</a>  </td>
				 </tr>
				<tr>
					<td> <a href="#" class="btn btn-primary btn-lg" role="button" aria-pressed="true" style="width: 300px; padding: 50px;">情報変更</a>  </td>
				    <td> <a id="trigger" href="#" class="btn btn-primary btn-lg" role="button" aria-pressed="true" style="width: 300px; padding: 50px;">出品</a>  </td>
				    <td> <a id="kansi" href="#" class="btn btn-primary btn-lg" role="button" aria-pressed="true" style="display:none; width: 90%; padding: 30px;">通報処理</a>  </td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
<!--
<script type="text/javascript">
	document.getElementById("trigger").onclick = function() {
		document.getElementById("kansi").style.display = "block";
	};
</script>
-->
<style>
td{
 padding:30px 30px;
}
.form-row{
	text-align:center
}
</style>
</html>