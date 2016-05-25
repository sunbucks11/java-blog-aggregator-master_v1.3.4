<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ include file="../layout/taglib.jsp" %>

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
		 	 
 		 	   <c:if test="${field.name eq 'confirmPassword'}"> 
			            <c:if test="${field.enabled eq 'true'}"> 
			            <div class="form-group">
			              <label for="password" class="col-sm-2 control-label login-label">Confirm Password:</label>
			              <div class="col-sm-10">
			                <input type="password" name="password_again" id="password_again"
			                  class="form-control" />
			              </div>
			            </div>
			          </c:if> 
			       </c:if> 
		 	 
		 	 
		 	 
	 					<c:if test="${field.enabled eq 'true' and field.name ne 'confirmPassword' }">
				            <div class="form-group">
				              <label for="name" class="col-sm-2 control-label login-label">${field.name}:</label>
				              <div class="col-sm-10">
				                <form:input path="${field.name}"
				                  cssClass=" input-xlarge login-form-field form-control" />
				                <form:errors path="${field.name}" />
				                </div>
				            </div>
			  			</c:if>
			  		   
		 
		 
			
			<!-- 
			     <c:set var="theString" value="${field.name}"/>
	 
	 				<c:if test="${field.name eq 'name'}">
	 					<c:if test="${field.enabled eq 'true'}"> 
				            <div class="form-group">
				              <label for="name" class="col-sm-2 control-label login-label">Name:</label>
				              <div class="col-sm-10">
				                <form:input path="name"
				                  cssClass=" input-xlarge login-form-field form-control" />
				                <form:errors path="name" />
				                </div>
				            </div>
			  			</c:if>
			  		</c:if>
			
			        
			    &nbsp;
			                  
			
			           <c:if test="${field.name eq 'email'}"> 
			            <c:if test="${field.enabled eq 'true'}">
			            <div class="form-group">
			              <label for="email" class="col-sm-2 control-label login-label">Email:</label>
			              <div class="col-sm-10">
			                <form:input path="email" cssClass="form-control" />
			                <form:errors path="email" />
			              </div>
			            </div>
			          </c:if>
			         </c:if>
			        
			    &nbsp;
			        
			        
			        <c:if test="${field.name eq 'password'}">
			          <c:if test="${field.enabled eq 'true'}">
			            <div class="form-group">
			              <label for="password" class="col-sm-2 control-label login-label">Password:</label>
			              <div class="col-sm-10">
			                <form:password path="password" cssClass="form-control" />
			                <form:errors path="password" />
			              </div>
			            </div>
			          </c:if>
			        </c:if> 
			        
			    &nbsp;   
			          
			          <c:if test="${field.name eq 'confirmPassword'}"> 
			            <c:if test="${field.enabled eq 'true'}"> 
			            <div class="form-group">
			              <label for="password" class="col-sm-2 control-label login-label">Confirm Password:</label>
			              <div class="col-sm-10">
			                <input type="password" name="password_again" id="password_again"
			                  class="form-control" />
			              </div>
			            </div>
			          </c:if> 
			       </c:if> 
	-->    
			       
			        			       
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
