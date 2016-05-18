<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>


<style>
.username.ng-valid {
	background-color: lightgreen;
}

.username.ng-dirty.ng-invalid-required {
	background-color: red;
}

.username.ng-dirty.ng-invalid-minlength {
	background-color: yellow;
}

.email.ng-valid {
	background-color: lightgreen;
}

.email.ng-dirty.ng-invalid-required {
	background-color: red;
}

.email.ng-dirty.ng-invalid-email {
	background-color: yellow;
}

.ROLE_USER {
	-moz-box-shadow: inset 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: inset 0px 1px 0px 0px #fff6af;
	box-shadow: inset 0px 1px 0px 0px #fff6af;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64
		), color-stop(1, #ffab23));
	background: -moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: -webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: -o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: -ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64',
		endColorstr='#ffab23', GradientType=0);
	background-color: #ffec64;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #ffaa22;
	display: inline-block;
	cursor: pointer;
	color: #333333;
	font-family: Arial;
	font-size: 10px;
	font-weight: bold;
	padding: 0px 7px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffee66;
}

.ROLE_USER:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23
		), color-stop(1, #ffec64));
	background: -moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: -webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: -o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: -ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23',
		endColorstr='#ffec64', GradientType=0);
	background-color: #ffab23;
}

.ROLE_USER:active {
	position: relative;
	top: 1px;
}

.ROLE_ADMIN {
	-moz-box-shadow: inset 0px 1px 0px 0px #f29c93;
	-webkit-box-shadow: inset 0px 1px 0px 0px #f29c93;
	box-shadow: inset 0px 1px 0px 0px #f29c93;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #fe1a00
		), color-stop(1, #ce0100));
	background: -moz-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background: -webkit-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background: -o-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background: -ms-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background: linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fe1a00',
		endColorstr='#ce0100', GradientType=0);
	background-color: #fe1a00;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #d83526;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 10px;
	font-weight: bold;
	padding: 0px 7px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #b23e35;
}

.ROLE_ADMIN:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ce0100
		), color-stop(1, #fe1a00));
	background: -moz-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background: -webkit-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background: -o-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background: -ms-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background: linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ce0100',
		endColorstr='#fe1a00', GradientType=0);
	background-color: #ce0100;
}

.ROLE_ADMIN:active {
	position: relative;
	top: 1px;
}

.update {
	background-color: #ffab23;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<br>
<br>

<body ng-app="myApp" class="ng-cloak">
      <div class="generic-container" ng-controller="UserController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">User Registration Form </span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.id" />
                      
                      
                       <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uid">ID</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.id" id="uid" class="username form-control input-sm" placeholder="Enter your Id" required ng-minlength="1"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 1</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.name" id="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                        
 <!--                     
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="address">Roles</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.roles" id="address" class="form-control input-sm" placeholder="Enter your Address. [This field is validation free]"/>
                              </div>
                          </div>
                      </div>
-->

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="email">Email</label>
                              <div class="col-md-7">
                                  <input type="email" ng-model="ctrl.user.email" id="email" class="email form-control input-sm" placeholder="Enter your Email" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required">This is a required field</span>
                                      <span ng-show="myForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions floatRight">
<!--                           <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid"> -->                             
                               <button type="button" ng-click="ctrl.update()"  class="btn btn-info btn-sm" ng-disabled="myForm.$pristine">Update</button>
                               <input type="submit" value="Add" class="btn btn-primary btn-sm" ng-disabled="myForm.$pristine"> 
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
<!--               <div class="panel-heading"><span class="lead">List of Users </span></div> -->
              <div class="tablecontainer">
                  <table class="table table-hover">
<!--                       <thead> -->
<!--                           <tr> -->
<!--                               <th>ID.</th> -->
<!--                               <th>Name</th> -->
<!--                               <th>Roles</th> -->
<!--                               <th>Email</th> -->
<!--                               <th width="40%"></th> -->
<!--                           </tr> -->
<!--                       </thead> -->
                      <tbody>
                          <tr ng-repeat="u in ctrl.users track by u.id">
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.name"></span></td>
                               <td >
								 <div style="display: inline;"  ng-repeat="r in u.roles">
									<!--  <span class={{r}} ng-bind="r"></span>	 -->	
								  	<span class={{r}}>{{r | limitTo : 5 : 5}}</span>				   		    
								 </div> 
                               </td>
                              <td><span ng-bind="u.email"></span></td>
                              <td>
	                              <!-- <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>   -->
	                             <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>  
	                             <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
  </body>
</html>