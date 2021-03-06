<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Farmit</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

  <link rel="stylesheet" href="skeleton.css">
<link rel="stylesheet" type="text/css" href="farmit.css" />
</head>
<body>

<%@ page import="javax.servlet.http.*" %>
<%@ page import="example.farm.model.*" %>



	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Header -->
		<div id="header">
		</div>
		<!-- End Header -->
		<!-- Begin Navigation -->
		  <div>
  			<%@ include file="includedivision.jsp" %> 
      	</div>
		<!-- End Navigation -->
		<!-- Begin Faux Columns -->
		<div id="faux">

			<%@ include file="includeleft.jsp" %> 

			<div id="content">

				<div class="container">
							
							<h2>Add animal</h2>

							<form action="/FarmClient/Farmlet" method="post">

								<label>Type of Animal</label>
								<br />
								<select id="typeAnimal" name="typeAnimal" required>
									<option selected name="changeFood" value="Cow" data-content="Powerfeed" data-example=" " >Cow</option>
									<option name="changeFood" value="Hen" data-content="Oats" data-example=" ">Hen</option>
									<option name="changeFoodHorse" value="Horse" data-content="Powerfeed" data-example="Hay">Horse</option>
									<option name="changeFood" value="Pig" data-content="Powerfeed" data-example="">Pig</option>
								</select>
								<br/>
								<label>Status</label>
								<br/>
								<select ="status-animal" name="status-animal">
									<option selected>Healthy</option>
									<option>Sick</option>
									<option>Gluefactory</option>
								</select>
								<br/>
								<label>IdAnimal</label>
								<br />
								<input type="number" name="idAnimal" maxlength="5" required/>
								<br />
								<label>Name</label>
								<br />
								<input type="text" name="name" maxlength="222" required />
								<br />
								<label>Age</label>
								<br />
								<input type="text" name="age" maxlength="2" required />
								<br />
								<label>Box</label>
								<br />
								<input type="text" name="idBox" maxlength="2" required />
								<br />
								<label id="food">Food</label>
								<br />
								<input type="number" name="food" maxlength="2" required placeholder="Insert amount" />
								<br />
								<label id="foodOne"> </label>
								<br />
								<input type="number" id="hay" name="hay" placeholder="Insert amount"  maxlength="2" /> 
								<br />
								<br />
								<button type="reset" value="Reset">Reset</button>
								<button id="updateAnimal"type="submit" value="addaAnimal" >Add</button>
								<input name="operation" value="addAnimal" type="hidden">
								<%if(request.getAttribute("msgCreate")==null){
									 }else{ %>
									 	<center><%=request.getAttribute("msgCreate")%></center><%
									}%>
								<%if(request.getAttribute("msg")==null){
									 }else{ %>
									 	<center><%=request.getAttribute("msgCreate")%></center><%
									}%>	
							</form>
		


						</div>
					

			</div>
			<!-- End Content Column -->
			<!-- Begin Right Column -->
			<%@ include file="includeright.jsp" %> 
			<!-- End Right Column -->
		
		<!-- End Faux Columns -->
		<!-- Begin Footer -->
		<%@ include file="includefooter.jsp" %> 
		<!-- End Footer -->
	</div>
	<!-- End Wrapper -->
</body>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="/FarmClient/myscripts.js"></script>
</html>