<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body>
    <div class="container" >
        <div class="row">
            <div class="col-sm-8 offset-sm-2">
                <div class="panel">
                    <div class="panel panel-heading">
                        <div class="panel panel-body">
                          <div class="form-group" id="insertBox">
                            <div class="empBox">
                             <form:form action="save" modelAttribute="employee" method="post"
                                 cssClass="form-horizontal">
                               <form:hidden path="id" /> 
                               
                               <div class="form-group row">
                                <label for="employeeName" class="col-md-4 control-label">Employee
                                    Name:</label>
                                <div class="col-md-8">
                                    <form:input path="employeeName" cssClass="form-control-sm" />
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="password" class="col-md-4 control-label">Password(<span class="text-danger">*</span>)</label>
                                <div class="col-md-8">
                                    <form:input path="password" cssClass="form-control-sm"  type="password"/>
                                     <form:errors path="password" cssClass="error" />
                                </div>
                               </div>
                               <div class="form-group row">
                                  <label for="dateOfBirth" class="col-md-4 control-label">Date
                                    Of Birth:</label>
                                   <div class="col-md-8">
                                    <form:input type="date" path="dateOfBirth" cssClass="form-control-sm" />
                                   </div>
                                </div>
                                <div class="form-group row">
                                  <label for="age" class="col-md-4 control-label">Age:</label>
                                    <div class="col-md-8">
                                       <form:input path="age" cssClass="form-control-sm" />
                                    </div>
                                  </div>
                                   <div class="form-group row">
                                     <label for="gender" class="col-sm-4 control-label">Gender</label>
                                     <div class="col-sm-6">
                                     <div class="form-check-inline">
                                       <form:radiobutton path="gender"  cssClass="form-check-inline" value="Male" />
                                         Male
                                     </div>
                                      <div class="form-check-inline">
                                        <form:radiobutton path="gender"  cssClass="form-check-inline" value="Female" />
                                        Female
                                     </div> 
                                      <div class="form-check-inline">
                                        <form:radiobutton path="gender"  cssClass="form-check-inline" value="Custom" />
                                        Custom
                                      </div>    
                                    </div>
                                  </div>
                                  <div class="form-group row" id="row">
                                    <label for="note" class="col-md-4 control-label">Note:</label>
                                      <div class="col-md-6">
                                        <form:textarea path="note" cssClass="form-control-sm" />
                                       </div>
                                   </div>
                                  <div class="btn-sm" id="saveEmp">
                                   <div class="col-sm-10">
                                      <input type="submit" value="Save" class="btn" id="btnCo" />
                                      <input type="submit" value="Clear" class="btn" id="btnCo" />
                                      <input type="submit" value="Back" class="btn" id="btnCo" />
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
    margin-top: 40px;
}
#insertBox{
    border: 1px solid gray;
} 
#saveEmp{
    padding-left: 33%;
}
#note{
height: 100px;

}
.empBox{
padding: 30px;
  padding-right: 30px;
}
#age{
	width: 170px;
}
#password{
	width: 170px;
}

    #btnCo{
    background-color: lightgrey;
    }
</style>
    

<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>