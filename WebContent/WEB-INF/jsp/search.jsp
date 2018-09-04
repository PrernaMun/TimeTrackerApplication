<!DOCTYPE html>
<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
input[type=text],select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=date],select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=time],select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #53a4d6;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
    border-radius : 5px;
	width:800px; margin:0 auto;
	background-color: #f2f2f2;
	border-width: 2px;
	border-style: solid;
	border-color: black;
	border-radius: 5px;
}

p.round1 {
	border: 2px solid black;
	border-radius: 5px;
}
.msg {
	position: relative;
	margin-bottom: 10px;
}

.msg p {
	padding: 0px 10px 5px 40px;
	font-size: 12px;
	background-repeat: no-repeat;
	background-position: 15px 5px;
	line-height: 30px;
}

.msg div {
	padding: 9px 10px 9px 40px;
	font-size: 12px;
	background-repeat: no-repeat;
	background-position: 10px 5px;
}

.msg-ok p {
	background-color: #DFF2BF;
	border: 1px solid #4F8A10;
	border-radius: 5px;
	color: #4F8A10;
	color: #326913;
	border: 1px solid #7BBC4A;
	text-align: center;
	background-image: url(images/Done2.jpg);
}

.msg-error p {
	background-color: #FFBABA;
	border: solid 1px #D8000C;
	border-radius: 5px;
	color: #D8000C;
	background-image: url(images/Error2.jpg);
}
.Close-button {
	position: absolute;
	top: -12px;
	right: -16px;
	width: 36px;
	height: 36px;
	cursor: pointer;
	z-index: 8040;
	background-image: url(images/close-button.png);
	background-repeat: no-repeat;
}
#containerNew {
	padding: 10px 0;
}
.shell {
	padding-top: 0px;
	width: 90%;
	margin: auto;
}

.shellNew {
	padding-top: 05px;
	/* 	width: 700px; */
	width: 650px;
	margin: 0 auto;
}
</style>
<body>
<div1 align="center">
<div33 id="containerNew">
		<div3 class="shellNew">

			<c:if test="${emp.successFlag =='S'}">
				<div11 class="msg msg-ok" id="successmsg" style="display: block;">
					<p>
						<strong>${emp.displayMsg} </strong>
					</p>
					<a title="Close" class="Close-button"></a>
				</div11>
			</c:if>

			
			<c:if test="${emp.successFlag =='F'}">
				<div11 class="msg msg-error" id="errormsg" style="display: block;"
					align="center">
					<p>
						<strong>${emp.displayMsg} </strong>
					</p>
					<a title="Close" class="Close-button"></a>
				</div11>
			</c:if>
			
		</div3>
	</div33>
	<div align="center">

		<h1>Track Employee IN-OUT Timing</h1>
		<form:form method="post" action="search">
			<table>
				
				<tr>
					<td>EmailId :</td>
					<td><form:input path="emailId" /></td>

				</tr>
				
				<tr>
					<td></td>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
	 <a style="display: block; text-align: center;margin-top:50px;" href="indexform">Back to Home Page</a>
	<div1>
</body>
</html>