<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

	<head>
		<meta charset="utf-8">
		<title>Members - Role &amp; Member</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- 		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
	</head>

<body ng-app="myApp"  class="ng-cloak" data-spy="scroll" data-target=".subnav" data-offset="50">
    <a style="float:right; margin: 0 20px 10px 10px; background-color: #2D3E50; color: white;" class="btn btn-default" href="../../../resources/public/login.html">Sign Out</a>
    <div class="wrapper">
        <div class="container">
            <h2>Members</h2>
            <div id="general-message"></div>
            
            
            <!--============ Members Tool Bar ============-->
             <%@ include file="../admin/fragment/members-tool-bar.jsp"%>
            	<div id="div-members-list-0">
                  	<%@ include file="../admin/fragment/top-table-status-bar.jsp"%>
                  	
						<div ng-controller="UserController as ctrl">
						   <table id="members-list-0" width="100%" border="0" cellspacing="0"
						      cellpadding="0"
						      class="table table-striped table-bordered table-condensed"
						      data-items-per-page="40" data-current-page="1" data-total-items="6"
						      data-sort-column="1" data-sort-order-asc="true"
						      data-alpha-filter="" data-role-filter=""
						      data-roles-filter-condition="or" data-filter-member-search="">
						      <thead>
						         <tr>
						            <th style="text-align: center"> <input type="checkbox" class="member-select-all-chb"/></th>
						            <th class="role-sort-column " style="width: 5%">ID<span class="css_right ui-icon ui-icon-triangle-1-n"></span></th>
						            <th class="role-sort-column" style="width: 25%">Name <span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
						            <th style="width: 35%">Role</th>
						            <th class="role-sort-column">Email <span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
						            <th class="role-sort-column table-date-td-width">Last Login <span class="css_right ui-icon ui-icon-carat-2-n-s" /></th>
						            <th class="role-sort-column table-date-td-width">Created <span class="css_right ui-icon ui-icon-carat-2-n-s" /></th>
						         </tr>
						      </thead>
						      <tbody>
						         <tr>
						         <tr ng-repeat="u in ctrl.users">
						            <td style="text-align: center" class="table-first-column">
						               <input id="member-select-1" class="member-select" data-member-id="1" type="checkbox" />
						            </td>
						            <!-- =================  ID ============== -->
						            <!--  <td style="text-align:right">1</td> -->
						            <td style="text-align: right">
						               <span ng-bind="u.id"></span>
						            </td>
						            <td style="vertical-align: middle">
						               <a rel="popover"
						                  data-content="&lt;img class=&#39;img-circle&#39; width=&quot;55px&quot; height=&quot;55px&quot; src=&quot;/avatar/ozj15c6vx0smonb6n6mlgeve.jpg&quot;/&gt;&amp;nbsp;&amp;nbsp;&lt;b&gt;E-mail:&lt;/b&gt;&amp;nbsp;&lt;a&gt;admin@demo.com&lt;/a&gt;"
						                  data-original-title="Admin">
						               <img class="img-circle"
						                  width="22px" height="22px"
						                  src="/avatar/ozj15c6vx0smonb6n6mlgeve.jpg"
						                  style="width: 22px; height: 22px" />
						               </a>&nbsp; 
						               <!-- ================= Name ================-->
						               <!-- <a href="#" class="member-edit" style="white-space:nowrap !important;" data-member-id="1">Admin</a> -->
						               <a href="#" class="member-edit" style="white-space: nowrap !important;" data-member-id="1">
						               <span ng-bind="u.name"></span>
						               </a>
						               <div style="display: inline" class="member-add-role-inline">
						                  <a class="member-add-role-inline-link btn-xs btn btn-default"
						                     data-member-id="1" data-member-name="Admin" href="#">Add
						                  Roles</a>
						               </div>
						            </td>
						            <!-- ================= Roles ================-->
						            <td>
						               <div style="display: inline;" ng-repeat="r in u.roles">
						                  <span
						                     class={{r}}>{{r | limitTo : 5 : 5}}</span>
						               </div>
						            </td>
						            <td>
						               <span ng-bind="u.email">
						            </td>
						            <td style="white-space: nowrap">
						               <div class="table-date-full">{{u.lastLoginDate}}</div>
						            </td>
						            <td style="white-space: nowrap">
						               <div class="table-date-full">{{u.createdDate}}</div>
						            </td>
						         </tr>
						      </tbody>
						   </table>
						</div>
     
                       <!-- ====== Bottom table status bar -->
                        <%@ include file="../admin/fragment/bottom-table-status-bar.jsp"%> 
                    </div>
                    
                    
                    
                    <!-- 
                    <template id="div-members-importing" data-dialog-tittle="Importing Members                      
                        <span class='glyphicon glyphicon-refresh glyphicon-refresh-animate importing-message-spinner'></span>">
                        <div id="importing-notify-message"></div>
                        <h3 class="importing-message-spinner">&nbsp;&nbsp;In progress, please wait ...</h3>
                    </template>
                    -->
                    
                </div>
                <!--/.fluid-container-->
                <div class="push">
                    <!--//-->
                </div>
            </div>
            
		                                
		<!-- Model Add Member -->
		<%@ include file="../admin/fragment/members-model.jsp"%>

		<!--  Member Remove Member -->	
        <%@ include file="../admin/fragment/member-list-dialog-box.jsp"%> 



	    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/user_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>   
