 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<body ng-app="myApp"  class="ng-cloak" data-spy="scroll" data-target=".subnav" data-offset="50">
 
 <div class="wrapper">
        <div class="container">
			<h2>Roles</h2>
			<div id="general-message"></div>
			<div class="subnav" style="padding:7px">
			   <a class="btn btn-default btn-success btn-sm" style="vertical-align:top !important" id="role-add"><i class="glyphicon glyphicon-tasks"></i>  Add</a>
			   <a class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="role-remove"><i class="glyphicon glyphicon-minus icon-white"></i> Remove</a>&nbsp;
			   <div class="pull-right">
			      <div class="btn-group">
			          <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown"><i class="glyphicon glyphicon-download"></i>&nbsp;Export&nbsp;<span class="caret"></span></button>
			          <ul class="dropdown-menu" role="menu">
			              <li><a href="/Admin/Roles/Download?FileType=CSV">CSV</a></li>
			          </ul>
			      </div> <!-- /btn-group -->
			
			
			      <div class="btn-group">
			          <button class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown"><i class="glyphicon glyphicon-upload"></i>&nbsp;Import&nbsp;<span class="caret"></span></button>
			          <ul class="dropdown-menu">
			              <li><a href="#" id="roles-import">CSV</a></li>
			          </ul>
			      </div><!-- /btn-group -->
			      &nbsp;<a class="btn btn-default btn-info btn-sm" style="vertical-align:top !important" id="role-refresh"><i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;</a>
			    </div>
			</div>
			<p/>
			
			<div id="div-roles-list-0">
						<!-- ======== Top table status bar  ======== -->
						<div class="div-table-info">
						    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>
						</div>
						<!-- ======================================== -->
				
					<div ng-controller="RoleController as ctrl">
						
						<table id="roles-list-0"  width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-condensed" data-items-per-page="40"  data-current-page="1"  data-total-items="18" data-sort-column="1" data-sort-order-asc="true">
							
						    <thead>
						        <tr>
						            <th style="width:3%;text-align:center"><input type="checkbox" class="role-select-all-chb"/></th>
						            <th class="role-sort-column" style="width:50px;">ID<span class="css_right ui-icon ui-icon-triangle-1-n"/></th>
						            <th class="role-sort-column" style="width:200px;">Role Name<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>                        
									<th class="role-sort-column" style="width:95px;" >Members<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						            <th class="role-sort-column">Settings<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
									<th class="role-sort-column table-date-td-width">Created<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						            <th class="role-sort-column table-date-td-width">Modified<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						        </tr>
						    </thead>
						    <tbody>
						          <tr ng-repeat="r in ctrl.roles">
						               <td style="text-align:center" class="table-first-column" style="width:2%">
						              </td>
						              
						              <!-- ==========  Role ID ========== -->
						              <td style="text-align:right">
						                {{ r.id}}
						               <!-- <span ng-bind=r.id"></span>   -->
						              </td>
						              
						              <!-- ==========  Role Name ========== -->
						              <td>
						                <a href="#" class="role-edit" data-role-id="1">
						                <span class="label" style="vertical-align:baseline !important;background-color:#c32113 !important; color:White !important">{{ r.name}}</span>
						                </a>
						              </td>
						              
						              <!-- ==========  Members  ========== -->
						              <td style="text-align:center">1</td>
						             
						              <!-- ==========  Settings  ========== --> 
						              <td><div class="expander">People who care about role and member management</div></td>
						              
						              <!-- ==========  Created Date  ========== --> 
						              <td style="white-space:nowrap">
						<!--            <div class="table-date-full">28 May 2012 11:15:15</div>
						              	<div class="muted table-date-relative">3 years ago</div> -->
						              </td>
						              
						              <!-- ==========  Modified Date  ========== --> 
						              <td style="white-space:nowrap">
						<!-- 	          <div class="table-date-full">27 Apr 2016 00:45:37</div>
							              <div class="muted table-date-relative">23 days ago</div> -->
						              </td>
						          </tr>
						        </tbody>
							</table>
						</div>
						
						<!-- ======== Bottom table status bar  ======== -->
						<div class="div-table-info">
						    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>    
						</div>	
				</div>	<!-- /div-roles-list-0 -->
    </div><!--/.fluid-container-->
  </div>

        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/role_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/role_controller.js' />"></script> 


</body>
</html>



