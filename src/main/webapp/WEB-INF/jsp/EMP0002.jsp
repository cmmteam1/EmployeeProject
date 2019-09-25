<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />"
rel="stylesheet">
	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
    <script type="text/javascript">
	    $(document).ready(function() {
		$('#checkBoxAll').click(function() {
			if ($(this).is(":checked"))
				$('.chkCheckBoxId').prop('checked', true);
			else
				$('.chkCheckBoxId').prop('checked', false);
		});
	});
</script>
</head>
<body>

	<form class="p-3">
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Employee
				Name</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="inputPassword"
					placeholder="">
			</div>
		</div>

		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Date
				Of Birth</label>
			<p style="padding-left: 20px;">
				<select class="form-control" id="exampleFormControlSelect1">
					<option>1</option>
					<option>2</option>
				</select>
			</p>
			<p style="padding-left: 30px;">
				<select class="form-control" id="exampleFormControlSelect1"　>
					<option>1</option>
					<option>2</option>
				</select>
			</p>
		</div>


		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Age</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="inputPassword"
					placeholder="">
			</div>
		</div>

		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Gender</label>
			<div class="col-sm-4">
				<div class="custom-control custom-checkbox custom-control-inline">
					<input type="checkbox" class="custom-control-input"
						id="defaultInline1"> <label class="custom-control-label"
						for="defaultInline1">Male</label>
				</div>

				<div class="custom-control custom-checkbox custom-control-inline">
					<input type="checkbox" class="custom-control-input"
						id="defaultInline2"> <label class="custom-control-label"
						for="defaultInline2">Female</label>
				</div>

				<div class="custom-control custom-checkbox custom-control-inline">
					<input type="checkbox" class="custom-control-input"
						id="defaultInline3"> <label class="custom-control-label"
						for="defaultInline3">Custom</label>
				</div>
			</div>
		</div>

	</form>
	<div style="padding-left: 220px;">
		<button type="button" class="btn btn-secondary">Search</button>
		<button type="button" class="btn btn-secondary">Cancel</button>
		<button type="button" class="btn btn-secondary">Delete</button>
		<button type="button" class="btn btn-secondary">Excel</button>
		<button type="button" class="btn btn-secondary">Report</button>
	</div>
	<div class="container main p-3">
	        <h2>Employee Table</h2>
        <form action="checkDelete" method="POST">
         <input type="submit" value="Delete"
				onclick="return confirm('Are u sure?')" />
            <table class="table table-bordered">
            <thead>
                <tr>
                    <th><input type="checkbox" id="checkBoxAll" />Check</th>
                    <th>Edit</th>
                    <th>Employee Id</th>
                    <th>Employee Name</th>
                    <th>Date Of Birth</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Note</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="tempCustomer" items="${employees}">
                    <c:url var="update" value="/employee/updateForm">
                      <c:param name="id" value="${tempCustomer.id }"/>
                    </c:url>
                    <!--<c:url var="deleteLink" value="/employee/delete">
                        <c:param name="employeeId" value="${tempCustomer.id}" />
                    </c:url>--->
                                      
                    <tr>
                       <td><input type="checkbox" class="chkCheckBoxId"
							value="${tempCustomer.id}" name="id" /></td>
                        <td><a href="${update}">Edit</a></td>
                        <td>${tempCustomer.employeeId}</td>
                        <td>${tempCustomer.employeeName}</td>
                        <td>${tempCustomer.dateOfBirth}</td>
                        <td>${tempCustomer.age}</td>
                        <td>${tempCustomer.gender}</td>
                        <td>${tempCustomer.note}</td>
                     </tr>
                </c:forEach>
            </tbody>
        </table>
      </form>
    </div>
<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>