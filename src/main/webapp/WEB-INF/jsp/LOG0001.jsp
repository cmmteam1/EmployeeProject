<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

 <!-- Required meta tags -->
 <meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <title>LogIn</title>
</head>
<body>

<div class="container" >
		<div class="row">
			<div class="col-sm-6 offset-sm-3">
				<div class="panel">
					<div class="panel panel-heading">
						<div class="panel panel-body">
							<div class="form-group" id="box">
							   <h5 class="card-title" ></h5>
							    <div class="formdes">
							    	 <form:form action="login"   modelAttribute="employee">
				                   <div class="form-group row">
					                 <label for="employee_id" class="col-sm-4 col-form-label" id="emp">Employee ID(<span class="text-danger">*</span>)</label>
						               <div class="col-sm-6">
                                           <form:input path="employee_id" class="form-control-sm" id="employeeId" />
						               </div>
					               </div>
					               <div class="form-group row">
						              <label for="password" class="col-sm-4 col-form-label" id="emp">Password(<span class="text-danger">*</span>)</label>
						                <div class="col-sm-6">
						                   <form:password path="password" class="form-control-sm" id="password"/>
						                </div>
					                </div>
					               <div class="btn-sm" id="logButton">
							          <div class="col-sm-10">
									    <button type="submit" class="btn btn-secondary">Login</button>
							            <button type="submit" class="btn btn-secondary">Cancel</button>
							          </div>
						           </div>
	          	                 </form:form>
							    </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<style>
	  body {
    font-family: "Lato", sans-serif;
}
.container{
    margin-top: 200px;
    
}
#box{
    border: 1px solid gray

} 
#logButton{
    padding-left: 145px;
}
.formdes{
    padding: 50px;
    padding-right: 30px;
    height: 250px;
}
	  
	</style>

<!--  	<div class="container">
      <div class="row">
		  <div class="col-md-8">
				<div class="card text-center">
				  <div class="card-body">
		 		  <h5 class="card-title">Login Form</h5>		
		           <form:form action="login"   modelAttribute="employee">
				     
			<table>
				
				<tr>
					<td><form:input path="employee_id" />Employee Id</td>
				</tr>
				
				<tr>
					<td><form:password path="password" />Password</td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
						</div>
					  </div>
		
		  </div>
	  </div>
	</div>-->
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>>