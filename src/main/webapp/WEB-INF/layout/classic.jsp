<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 
 <%@ include file="/resources/public/css/csslib.jsp" %> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>

 <body data-spy="scroll" data-target=".subnav" data-offset="50">
 
 <%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>

  <tilesx:useAttribute name="current"/>
   <br/>
   
 <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
 	<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<%-- <a class="navbar-brand" href="<spring:url value="/" />"> <b>Role &amp; Member</b></a> --%>
				<a class="navbar-brand" href="<spring:url value="/home" />"> <b>Admin Tool</b></a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<div class="navbar-collapse">
					<ul class="nav navbar-nav">
					  <security:authorize access="! isAuthenticated() && !hasRole('ROLE_ADMIN')">	
		                <li class="${current == 'home' ? 'active' : ''}"><a href="<spring:url value="/home.html" />"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <spring:message code="btn.home" text="Home" /></a></li>
		              </security:authorize>
		              <security:authorize access="hasAnyRole('ROLE_ANONYMOUS')">
		                <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/register.html" />"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span> <spring:message code="btn.register" text="Register" /></a></li>
		              </security:authorize>
		              
		              <security:authorize access="! isAuthenticated()">	             
		               <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/login.html" />"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> <spring:message code="btn.login" text="Login" /></a></li>
		              </security:authorize>

		              <security:authorize access="isAuthenticated()  && !hasRole('ROLE_ADMIN')">
		                <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/account.html" />"><span class="glyphicon glyphicon glyphicon-edit" aria-hidden="true"></span> <spring:message code="btn.account" text="Account" /></a></li>
		              </security:authorize>
		              
		              <security:authorize access="hasRole('ROLE_ADMIN')">	
						<li class="${current == 'home' ? 'active' : ''}"> <a href="<spring:url value="/index.html" />"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <spring:message code="btn.index" text="Index" /></a></li>
						
						<li class="${current == 'RolesManagement' ? 'active' : ''}"> <a href="<spring:url value="/RolesManagement.html" />"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> <spring:message code="btn.roles" text="Roles" /></a></li>
	                    <li class="${current == 'UserManagement' ? 'active' : ''}"><a href="<spring:url value="/UserManagement.html" />"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <spring:message code="btn.members" text="Members" /></a></li>
	                    
	                    
	                    <li class="${current == 'FieldsManagement' ? 'active' : ''}"><a href="<spring:url value="/FieldsManagement.html" />"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> <spring:message code="btn.fields" text="Fields" /></a></li>
	                    
	                    <li class="${current == 'DomainsManagement' ? 'active' : ''}"><a href="<spring:url value="/DomainsManagement.html" />"> <span class="glyphicon glyphicon-th" aria-hidden="true"></span> <spring:message code="btn.domains" text="Domains" /> </a></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-pushpin" aria-hidden="true"></span></span> <spring:message code="btn.more" text="More" /> <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<spring:url value="/audit.html" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="margin-right: 10px;"></span><spring:message code="btn.audit" text="Audit" /></a></li>
								<li class="divider"></li>
								<li><a href="<spring:url value="/tools.html" />"><span class="glyphicon glyphicon-briefcase" aria-hidden="true" style="margin-right: 10px;"></span><spring:message code="btn.tools" text="Tools" /></a></li>
								<li><a href="<spring:url value="/settings.html" />"><span class="glyphicon glyphicon-cog" aria-hidden="true" style="margin-right: 10px;"></span><spring:message code="btn.settings" text="Settings" /></a></li>
								<li class="divider"></li>
								<li><a href="<spring:url value="/api.html" />"><span class="glyphicon glyphicon-info-sign" aria-hidden="true" style="margin-right: 10px;"></span><spring:message code="btn.api" text="API" /></a></li>
								<li><a href="<spring:url value="/help.html" />"><span class="glyphicon glyphicon-book" aria-hidden="true" style="margin-right: 10px;"></span> </span><spring:message code="btn.help" text="Help" /></a></li>
								<li><a href="<spring:url value="/faq.html" />"><span class="glyphicon glyphicon-question-sign" aria-hidden="true" style="margin-right: 10px;"></span></span><spring:message code="btn.faq" text="FAQ" /></a></li>
							</ul>
						</li>
						</security:authorize>
					</ul>
					
					 <span style="float: right!important;; margin-top: 15px; margin-left:20px; color: white"><spring:message code="app.language.lbl" text="" /> : 
					   <a style="color: white;" href="?language=en"><spring:message code="app.language.name.english" text="" /></a> 
					 	<span style="color: white;">&#124;</span>
					 		<a style="color: white;" href="?language=zh_CN"><spring:message code="app.language.name.chinese" text="" /> </a> 
					 	</span>
					
					 <security:authorize access="isAuthenticated()">
						<div class="btn-group pull-right" style="margin-top: 8px">
							<a class="btn dropdown-toggle btn-success" data-toggle="dropdown" href="#" title="&lt;admin@demo.com&gt;" style="padding: 1px 4px 1px 1px !important"> 
							<img src="http://www.onlinetestpro.co.uk/images/Admin.png" style="width: 30px; height: 30px" class="img-circle" /> Admin <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="<spring:url value="/profile" />"><spring:message code="btn.profile" text="Profile" /></a></li>
								<li class="divider"></li>
								<security:authorize access="isAuthenticated()">
								<li><a href="<spring:url value="/logout.html" />"><spring:message code="btn.logout" text="Logout" /></a></li>
								</security:authorize>			              
				              <security:authorize access="! isAuthenticated()">
				                 <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/resources/public/login.html" />"><spring:message code="btn.login" text="Login" /></a></li>
				              </security:authorize>	
							</ul>
						</div>
					</security:authorize>
					
					
				</div>
			</div>
		</div>
  </nav>


   	<tiles:insertAttribute name="body" />

	<br>
	<br>
	<center>
		<tiles:insertAttribute name="footer" />
	</center>

</html>