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
	border-radius: 5px;
	width: 800px;
	margin: 0 auto;
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
<script type="text/javascript">
	function validateEmployeeId() {

		var empid = document.getElementById('empid').value;
		var regEx = /^[0-9]+$/;

		if (empid == null || empid == "") {

			document.getElementById("err1").innerHTML = "Please enter Employee Id";
			return false;
		}

		else if (!(regEx.test(empid))) {

			document.getElementById("err1").innerHTML = "Employee Id should contain digits only";
			return false;

		} else if (empid.length >= 10) {

			document.getElementById("err1").innerHTML = "Please enter valid Employee Id (Max Size 10)";
			return false;

		}

		else {
			document.getElementById("err1").innerHTML = "";
			return true;
		}

	}

	function validateDate() {

		var date = document.getElementById('dateid').value;
		if (date == null || date == "") {

			document.getElementById("err3").innerHTML = "Please select Date from Calender";
			return false;
		}

		else {
			document.getElementById("err3").innerHTML = "";
			return true;
		}

	}

	function validateStartTime() {

		var starttime = document.getElementById('starttimeid').value;
		if (starttime == null || starttime == "") {

			document.getElementById("err4").innerHTML = "Please select proper start time";
			return false;
		}

		else {
			document.getElementById("err4").innerHTML = "";
			return true;
		}

	}

	function validateEndTime() {

		var endtime = document.getElementById('endtimeid').value;
		if (endtime == null || endtime == "") {

			document.getElementById("err5").innerHTML = "Please select proper end time";
			return false;
		}

		else {
			document.getElementById("err5").innerHTML = "";
			return true;
		}

	}

	function validateEmailId() {
		var email1 = document.getElementById('emailid').value;
		var filter = /^([a-zA-Z0-9_%!#$&*()+\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (email1 == null || email1 == "") {
			document.getElementById("err2").innerHTML = "Please enter E-mail Id";
			return false;
		}
		if (email1 != null && email1 != "") {
			if (!filter.test(email1)) {
				document.getElementById("err2").innerHTML = "Please enter valid E-mail Id";
				return false;
			} else {
				document.getElementById("err2").innerHTML = "";
				return true;
			}
		} else {
			if (email1 == null || email1 == "")
				document.getElementById("err2").innerHTML = "Please enter E-mail Id";
			else
				document.getElementById("err2").innerHTML = "";
			return true;
		}
		return false;
	}

	function validateSubmit() {

		var f = validateEmployeeId();
		var f2 = validateEmailId();
		var f3 = validateDate();
		var f4 = validateStartTime();
		var f5 = validateEndTime();
		if (!(f && f2 && f3 && f4 && f5)) {

			return false;
		} else {

			return true;

		}
		return false;
	}
</script>
<body>
	<div1 align="center"> <div33 id="containerNew"> <div3
		class="shellNew"> <c:if test="${emp.successFlag =='S'}">
		<div11 class="msg msg-ok" id="successmsg" style="display: block;">
		<p>
			<strong>${emp.displayMsg} </strong>
		</p>
		<a title="Close" class="Close-button"></a> </div11>
	</c:if> <c:if test="${emp.successFlag =='F'}">
		<div11 class="msg msg-error" id="errormsg" style="display: block;"
			align="center">
		<p>
			<strong>${emp.displayMsg} </strong>
		</p>
		<a title="Close" class="Close-button"></a> </div11>
	</c:if> <!-- added by anam on 11/05/2016 --> <!-- ends here --> </div3> </div33>
	<div align="center">

		<h1>Track Employee IN-OUT Timing</h1>
		<form:form method="post" action="save">
			<table>
				<tr>
					<td>Employee Id :</td>
					<td><form:input path="id" id="empid" /></td>
					<td><div11> <span style="color: red" id="err1"></span>
						</div11></td>
				</tr>
				<tr>
					<td>EmailId :</td>
					<td><form:input path="emailId" id="emailid" /></td>
					<td><div11> <span style="color: red" id="err2"></span>
						</div11></td>

				</tr>
				<tr>
					<td><label>Date:</label></td>
					<td><form:input path="date" type="date" id="dateid" /></td>
					<td><div11> <span style="color: red" id="err3"></span>
						</div11></td>
				</tr>

				<tr>
					<td>Start Date-Time:</td>

					<td><form:input path="startTime" type="time" id="starttimeid" /></td>
					<td><div11> <span style="color: red" id="err4"></span>
						</div11></td>

				</tr>
				<tr>
					<td>End Date-Time :</td>
					<td><form:input path="endTime" type="time" id="endtimeid" /></td>
					<td><div11> <span style="color: red" id="err5"></span>
						</div11></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" ss
						onclick="return validateSubmit();" /></td>

				</tr>
			</table>
		</form:form>
	</div>
	<a href="indexform"
		style="display: block; text-align: center; margin-top: 50px;">Back
		To Home Page</a> <div1>
</body>
</html>