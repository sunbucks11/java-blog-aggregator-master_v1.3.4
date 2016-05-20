<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp" %>

    <link rel="stylesheet" type="text/css" href="./resources/bower_components/pure/pure.css">
    <link rel="stylesheet" type="text/css" href="./resources/bower_components/pure/grids-responsive.css">
    <link rel="stylesheet" type="text/css" href="./resources/public/css/pure-theme.css">
    <link rel="stylesheet" type="text/css" href="./resources/public/css/style.public.css">
    <link rel="stylesheet" type="text/css" href="./resources/public/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./resources/public/css/calories-tracker.css">



	<div id="loginApp" class="login-box-main">
		<main ng-controller="BaseFormCtrl">
		
		<tt-error-messages extra-styles="/access-screen"></tt-error-messages>
		 <br/>

			<form ng-submit="onLogin()" name="form" class="pure-form login-form" novalidate ng-controller="LoginCtrl">
				<div class="login-form">
					<div class="login-title">Already a member? Sign in:</div>
					<div class="login-form-inner">
						<div id="notify-message"></div>
						 <p><br></p>
						<!--===================Username ===================-->
						<div class="form-group">
							<input tabindex="1"
								class="input-xlarge login-form-field form-control"
								type="text"
								ng-focus="focus('username')" ng-blur="blur('username')"
								ng-model="vm.username" name="username" placeholder="Username"
								required>
							<div class="error-messages" ng-show="isMessagesVisible('username')" ng-messages="form.username.$error" ng-cloak>
								<div ng-message="required">The username is mandatory</div>
							</div>
						</div> <!-- /Username -->
						<br>
						<!--================== /Password =====================-->					
						<!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}"> 
						     <div ng-message="pattern">At least one number and uppercase</div>-->
						<div class="form-group">
							<input tabindex="2"
								class="input-xlarge login-form-field form-control"
								type="password"
								ng-focus="focus('password')" ng-blur="blur('password')"
								ng-model="vm.password" name="password" placeholder="Password"
								required ng-minlength="5">
							<div class="error-messages"
								ng-show="isMessagesVisible('password')"
								ng-messages="form.password.$error" ng-cloak>
								<div ng-message="required">The password is mandatory</div>
								<div ng-message="minlength">must have minimum 5 characters</div>
							</div>
						</div> <!-- /Password -->
						<input tabindex="3" class="login-form-field" id="remember-me" type="checkbox"> Remember Me
					</div>  <!--  /login-form-inner -->
	
	
					<div class="login-form-buttons">
						<button type="submit" class="btn btn-default btn-primary sing-in-btn login-form-button btn-sm">Sign In</button>
						&nbsp;
						<div class="glyphicon glyphicon-refresh glyphicon-refresh-animate" id="login-spinner" style="vertical-align: middle; display: none"> </div>
						<div style="float: right; margin-top: 5px"> <a href="register.html">Needs an account?
						</a> <span>&nbsp;&nbsp;</span> <a href="forgot-password.html">Forgot your password?</a> </div>
					</div> <!-- /login-form-buttons -->
				</div> <!-- /login-form -->
			</form>
		</main>
	</div>



	<script type="text/javascript" 
    		data-main="./resources/public/js/run-loggin-app"
            src="./resources/bower_components/requirejs/require.js">
	</script>






<!-- 
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
				remote: "Such username already exists!"
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

 -->















<!--
<style>

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>

<form class="form-signin" role="form" action="<spring:url value="/j_spring_security_check" />" method="POST">
	<h2 class="form-signin-heading">Please sign in</h2>
	<input type="text" name="j_username" class="form-control" placeholder="Name" required autofocus> 
	<input type="password" name="j_password" class="form-control" placeholder="Password" required> 
	<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
</form>
-->