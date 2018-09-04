 <!DOCTYPE html>
<html>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    align:center;
    width:100%;
}

td, th {
    border: 1px solid #53a4d6;
    text-align: left;
    padding: 8px;
     align:center;
}

tr:nth-child(even) {
    background-color: #53a4d6;
     align:center;
}
div {
    
	width:700px; margin:0 auto;
	background-color: #f2f2f2;
	border-width: 2px;
	border-style: solid;
	border-color: black;
	border-radius: 5px;
	margin-top: 100px;
}
div2
 {
    
	width:1000px; margin:0 auto;
	margin-top: 30px;

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
	text-align: center;
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
</head>
<body>

<div>
<div33 id="containerNew">
		<div3 class="shellNew">

			<c:if test="${emp.successFlag =='S'}">
				<div11 class="msg msg-ok" id="successmsg" style="display: block;align:center">
					<p>
						<strong align="center">${emp.displayMsg} </strong>
					</p>
					<a title="Close" class="Close-button"></a>
				</div11>
			</c:if>

			
			<c:if test="${emp.successFlag=='F'}">
				<div11 class="msg msg-error" id="errormsg" style="display: block;align:center">
					<p>
						<strong  align="center">${emp.displayMsg} </strong>
					</p>
					<a title="Close" class="Close-button"></a>
				</div11>
			</c:if>
			
		</div3>
	</div33>
	<h1 align="center">Employees List</h1>
	<table>
	<tr><th>Id</th><th>EmailId</th><th>Date</th><th>Start Time</th><th>End Time</th></tr>
    <c:forEach var="list" items="${emp.lEmp}"> 
    <tr>
    <td>${list.id}</td>
    <td>${list.emailId}</td>
    <td>${list.date}</td>
    <td>${list.startTime}</td>
    <td>${list.endTime}</td>
   <%--  <td><a href="editlist/${list.id}">Edit</a></td>
    <td><a href="deletelist/${list.id}">Delete</a></td> --%>
    </tr>
    </c:forEach>
    </table>
    <br/>
   
    </div>
    <div2>
    <a style="display: block; text-align: center;margin-top:50px;" href="indexform">Back to Home Page</a>
    </div2>
    </body>
    </html>