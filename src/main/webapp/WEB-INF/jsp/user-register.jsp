<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ include file="../layout/taglib.jsp" %>
<!-- <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script> -->


<div class="container">
<div class="wrapper">



 
   <div class="login-box login-box-pos-top-relative">
		<form:form commandName="user" cssClass="form-horizontal registrationForm">

			<div class="login-form">
				<div class="login-title">Need an Account?</div>
				<div class="login-form-inner">
					<div id="notify-message"></div>
					<p> <br> </p>

					<c:if test="${param.success eq true}">
						<div class="alert alert-success login-label">Registration successfull!</div>
					</c:if>
   
   
   <c:forEach items="${fields}" var="field">
        <c:set var="theString" value="${field.name}"/>
        
        
<%-- 				<c:if test="${fn:containsIgnoreCase(theString, 'name')}"> --%>
                   <c:if test="${field.name eq 'name'}">
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label login-label">Name:</label>
						<div class="col-sm-10">
							<form:input path="name"
								cssClass=" input-xlarge login-form-field form-control" />
							<form:errors path="name" />
					    </div>
					</div>
				  </c:if>
					
		&nbsp;
									
<%-- 			<c:if test="${fn:containsIgnoreCase(theString, 'email')}"> --%>
    			 <c:if test="${field.name eq 'email'}"> 
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label login-label">Email:</label>
						<div class="col-sm-10">
							<form:input path="email" cssClass="form-control" />
							<form:errors path="email" />
						</div>
					</div>
				 </c:if>
				
		&nbsp;
				
<%-- 				<c:if test="${fn:containsIgnoreCase(theString, 'password')}">	 --%>
 				<c:if test="${field.name eq 'password'}">
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label login-label">Password:</label>
						<div class="col-sm-10">
							<form:password path="password" cssClass="form-control" />
							<form:errors path="password" />
						</div>
					</div>
				</c:if>	
				
		&nbsp;	 
					
<%-- 				<c:if test="${fn:containsIgnoreCase(theString, 'confirmPassword')}"> --%>
     		   <c:if test="${field.name eq 'confirmPassword'}">	 
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label login-label">Confirm Password:</label>
						<div class="col-sm-10">
							<input type="password" name="password_again" id="password_again"
								class="form-control" />
						</div>
					</div>
				</c:if>	

</c:forEach>

					<div class="login-form-buttons">
						<button style="background-color: green;" submit" class="btn btn-default btn-primary sing-in-btn login-form-button btn-sm">Create User</button>
						&nbsp;
						<div class="glyphicon glyphicon-refresh glyphicon-refresh-animate"
							id="login-spinner" style="vertical-align: middle; display: none">
						</div>
				

						<div style="float: right; margin-top: 5px">
							<a href="login.html">Sign in!</a> <span>&nbsp;&nbsp;</span> <a
								href="forgot-password.html">Forgot your password?</a>
						</div>

					</div>
	
				</div>
				
			</div>
		</form:form>
	 </div>

</div>
</div>


<script type="text/javascript">
$(document).ready(function() {
	
	$(".registrationForm").validate(
		{
			rules: {
				name: {
					required : true,
					minlength : 3,
					remote : {
						url: "<spring:url value='/register/available.html' />",
						type: "get",
						data: {
							username: function() {
								return $("#name").val();
							}
						}
					}
				},
				email: {
					required : true,
					email: true
				},
				password: {
					required : true,
					minlength : 5
				},
				password_again: {
					required : true,
					minlength : 5,
					equalTo: "#password"
				}
			},
			highlight: function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight: function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			},
			messages: {
				name: {
					remote: "Such username already exists!"
				}
			}
		}
	);
});
</script>





<!-- 
<div class="container">
<div class="wrapper">

	<div class="login-box login-box-pos-top-relative">
		
			 <form name="form" ng-submit="createUser()" class="pure-form login-form" novalidate ng-controller="NewUserCtrl">
			 
			 
				<div class="login-form">
					<div class="login-title">Need an Account?</div>
					<div class="login-form-inner">
						<div id="notify-message"></div>
						 <p><br></p>
						
						
						<div class="form-group">
						<label>Your Name</label>
							<input tabindex="1"
								class="input-xlarge login-form-field form-control"
								type="text"
								ng-focus="focus('username')" 
								ng-blur="blur('username')"
								ng-model="vm.username" name="username" placeholder="Username"
								required>
								
								<script> hidegoup();</script> 
								
							<div class="error-messages" ng-src="myFunction()" ng-show="isMessagesVisible('username')" ng-messages="form.username.$error" ng-cloak>
								<div ng-message="required"> The username is mandatory</div>
							</div>
							<p id="user-info" style="color: #6BCE8F; font-size:12px">May contain letters, digits, dashes and underscores, and should be between 2 and 30 characters long</p>
							
						</div> 
						
						
						
				

	

						<div class="form-group">
						<label>Email</label>
							<input tabindex="1"
								class="input-xlarge login-form-field form-control"
								type="email"
								ng-focus="focus('email')" 
								ng-blur="blur('email')"
								ng-model="vm.email" name="email" placeholder="Email"
								required>
							<div class="error-messages" ng-show="isMessagesVisible('email')" ng-messages="form.email.$error" ng-cloak>
								<div ng-message="required">The email is mandatory</div>
                            	<div ng-message="email">must be a valid email</div>
							</div>
							
							<p class="info" style="color: #6BCE8F; font-size:12px">Type carefully. You will be sent a confirmation email</p>
							
						</div> 
						



				

						<div class="form-group">
						<label>Password</label>
							<input tabindex="2"
								class="input-xlarge login-form-field form-control"
								type="password"
								ng-focus="focus('password')" 
								ng-blur="blur('password')"
								ng-model="vm.password" name="password" placeholder="Password"
								required ng-minlength="6"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}">
							<div class="error-messages"
								ng-show="isMessagesVisible('password')"
								ng-messages="form.password.$error" ng-cloak>
								<div ng-message="required">The password is mandatory</div>
								<div ng-message="minlength">must have minimum 6 characters</div>
								<div ng-message="pattern">At least one number and uppercase</div>
							</div>
							
							<p class="info" style="color: #6BCE8F; font-size:12px">The longer the better. Include numbers for good protection </p>
							
						</div> 





						<div class="form-group">
						<label>Confirm Password</label>
							<input tabindex="2"
								class="input-xlarge login-form-field form-control"
								type="password"
								ng-focus="focus('confirmPassword')" 
								ng-blur="blur('confirmPassword')"
								ng-model="vm.confirmPassword" name="confirmPassword" placeholder="Confirm Password"
								required ng-minlength="6"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
								check-passwords-match>
							<div class="error-messages"
								ng-show="isMessagesVisible('confirmPassword')"
								ng-messages="form.confirmPassword.$error" ng-cloak>
								<div ng-message="required">The password is mandatory</div>
								<div ng-message="minlength">must have minimum 6 characters</div>
								<div ng-message="pattern">At least one number and uppercase</div>
								<div ng-message="checkPasswordsMatch">Passwords must match</div>
							</div>
							
							<p class="info" style="color: #6BCE8F; font-size:12px">Confirm your password to remember</p> <br/>
							
							<p style="color: grey">By clicking on the Create your account button below, 
								you certify that you have read and agreed to our 
								<a href="#">terms of use</a> and <a href="#">privacy policy</a></p>
							
						</div> 


					</div>
	
	
					<div class="login-form-buttons">
						<button style="background-color: green; type="submit" class="btn btn-default btn-primary sing-in-btn login-form-button btn-sm">Create User </button>&nbsp;
						<div class="glyphicon glyphicon-refresh glyphicon-refresh-animate" id="login-spinner" style="vertical-align: middle; display: none"> </div>
					
						<div style="float: right; margin-top: 5px">
			              <a href="login.html">Sign in!</a>
			              <span>&nbsp;&nbsp;</span> 
			              <a href="forgot-password.html">Forgot your password?</a>
			            </div>
					
					</div> 

				</div> 

			</form>

	</div>
	
	
	<script type="text/javascript" data-main="./resources/public/js/run-create-user-app"
        src="./resources/bower_components/requirejs/require.js"></script>

      <script src="<c:url value='/static/js/run-create-user-app.js' />"></script>


</div>
</div>
-->

