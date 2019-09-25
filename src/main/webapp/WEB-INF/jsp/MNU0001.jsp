<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: "Lato", sans-serif;
}

.sidenav {
	height: 100%;
	width: 160px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #E9F7EF;
	overflow-x: hidden;
	padding-top: 30px;
	border: 1px solid black;
}

.sidenav a {
	padding: 32px 8px 4px 16px;
	text-decoration: none;
	font-size: 15px;
	color: #5DADE2;
	display: block;
}

.sidenav a:hover {
	color: #21618C;
}

.main {
	margin-left: 160px;
	font-size: 18px;
	padding: 70px 10px;
}

.navbar {
	background-color: #E9F7EF;
	border: 1px solid black;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg fixed-top">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<div>EmployeeID:</div>
				<div>EmployeeName:</div>
			</ul>

			<form class="form-inline my-2 my-lg-0">
				<a href="" class="btn text-primary my-2 my-sm-0">Logout</a>
			</form>
		</div>
	</nav>

	<div class="sidenav">
		<a href="employee/user">Add Employee</a> <a href="#services">Search
			Employee</a>
	</div>

	<div class="container-fluid main">
		<h4>Employee Name:</h4>
		<div class="row">

			<div class="col-sm">
				<p style="margin-top: 60px;">IN</p>
				<div class="p-1 w-50 mb-3 bg-secondary text-white">HH:MM:SS</div>
			</div>
			<div class="col-sm">
				<p style="margin-top: 60px;">OUT</p>
				<div class="p-1 w-50 mb-3 bg-secondary text-white">HH:MM:SS</div>
			</div>
			<div class="col-sm">
				<h4>
					Reason(<span class="text-danger">*</span>)
				</h4>
				<textarea id="story" name="story" rows="3" cols="40">     
		                                             
                </textarea>
			</div>
			<div class="col-sm" style="margin-top:80px;">
				<p class="btn btn-secondary">Excel</p>
				<p class="btn btn-secondary">Submit</p>
				<p class="btn btn-secondary">Update</p>
			</div>
		</div>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Date</th>
					<th>Day</th>
					<th>In</th>
					<th>Out</th>
					<th>In Remark</th>
					<th>Out Remark</th>
					<th>Action</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
					<td>
						<p class="btn btn-secondary">Edit</p>
						<p class="btn btn-secondary">Cancel</p>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
</body>
</html>
