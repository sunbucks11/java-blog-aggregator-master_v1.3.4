<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>



	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		<style type="text/css">
		
		.btn-file {
		    position: relative;
		    overflow: hidden;    
		}
		.btn-file input[type=file] {
		    position: absolute;
		    top: 0;
		    right: 0;
		    min-width: 100%;
		    min-height: 100%;
		    font-size: 100px;
		    text-align: right;
		    filter: alpha(opacity=0);
		    opacity: 0;
		    outline: none;
		    background: white;
		    cursor: inherit;
		    display: block;
			}
		}
		</style>

</head>



<body ng-app="myApp"  class="ng-cloak" data-spy="scroll" data-target=".subnav" data-offset="50">
   <!--  <a style="float:right; margin: 0 20px 10px 10px; background-color: #2D3E50; color: white;" class="btn btn-default" href="../../../resources/public/login.html">Sign Out</a> -->
    <div class="wrapper">
        <div class="container">
            <h2>Users</h2>
            <div id="general-message"></div>
            
            
            <!--============ Members Tool Bar ============-->
             <%@ include file="../admin/fragment/members-tool-bar.jsp"%>
            	<div id="div-members-list-0">

		<div ng-controller="UserController as ctrl">
						
						<!-- ======== Refresh Button ========= -->
						<div style="float: right"> 
							<a  ng-click="ctrl.fetchAllUsers()" class="btn btn-default btn-info  btn-sm" id="refresh-member">
					          <i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;                      
					         </a>
						</div> 	
						<br /> <br /> 

						<!-- ======== Top page number ========= -->
					    <%@ include file="../admin/fragment/top-table-status-bar.jsp"%>

						   <table id="member-table" data-toggle="table"  width="100%" border="0" cellspacing="0" cellpadding="0"
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
						                  src="http://www.onlinetestpro.co.uk/images/Admin.png"
						                  style="width: 22px; height: 22px" />
						               </a>&nbsp; 
						               <!-- ================= Name ================-->
						               <!-- <a href="#" class="member-edit" style="white-space:nowrap !important;" data-member-id="1">Admin</a> -->
						               <a data-toggle="modal" data-target="#editMemberModal" href="#" class="member-edit" style="white-space: nowrap !important;" data-member-id="1">
						                    <span ng-bind="u.name"></span>
						               </a>
						               

						               <div style="display: inline" class="member-add-role-inline">
						                  <a ng-click='onAddRoleSaveUser(u)' class="member-add-role-inline-link btn-xs btn btn-default" data-toggle="modal" data-target="#addRoleModel"  data-member-id="1" data-member-name="Admin" href="#">Add Roles</a>
<!-- 						                   <input ng-checked={{r.enabled}} type="checkbox" ng-click='onAddOrRemoveRole(r, u)' ng-model="selection.ids[r.id]" name="group"  />  -->
						               </div>
						               
    
						            </td>
						            <!-- ================= Roles ================-->
						            <td id="member-roles-all-1">
						               <div style="display: inline;" ng-repeat="r in u.roles">
<!-- 						                  <span class={{r}}>{{r | limitTo : 5 : 5}}</span> -->
	
						                  <!-- <span class="label">{{r.roleName}}</span> -->
						                  <!-- <span class="label" ng-style={background:'{{r.roleBackColor}}'}>{{r.roleName}}</span> -->

						                  
<!-- 						                  <div class="label member-role-label" ng-style={background:'{{r.roleBackColor}}'}>{{r.roleName}}
							                  <div class="member-role-label-cross role-member-remove-cross" 
							                  		data-role-id="1" 
							                  		data-member-id="1" 
							                  		data-role-name="Admins" 
							                  		data-member-name="Admin">&nbsp;|&nbsp;
							                  		<b>x</b>
							                  </div>
						                  </div> -->
						                  
						                  
                                        <div class="label member-role-label" ng-style={background:'{{r.roleBackColor}}'}>{{r.roleName}}
                                        <div class="member-role-label-cross role-member-remove-cross" data-role-id="7" data-member-id="2" data-role-name="API Members" data-member-name="Example Site">&nbsp;|&nbsp;<b>x</b></div></div>
						                  
						                  
<!-- 						                  <span class="label ng-binding" ng-style="{background:'#FFAB23'}" style="background: rgb(255, 171, 35);">{{r}}</span> -->
						               </div>
						            </td>
						            <!-- ================= Email ================-->
						            <td>
						               <span ng-bind="u.email">
						            </td>
						            <!-- ================= Last Login Date ================-->
						            <td style="white-space: nowrap">
						               <div class="table-date-full">{{u.lastLoginDate}}</div>
						            </td>
						            <!-- ================= Created Date ================-->
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
                    

                </div>
                <!--/.fluid-container-->
                <div class="push">
                    <!--//-->
                </div>        
            </div>
            
            
    
    
    
    
                
		                                
		<!-- Add Member Model -->
		<%@ include file="../admin/fragment/member-model.jsp"%> 

		<!-- Remove Member Model -->	
       <%@ include file="../admin/fragment/member-list-dialog-box.jsp" %>
       
       <!--  Edit Member Model -->	
       <%@ include file="../admin/fragment/edit-member.jsp" %>
        

	   <%@ include file="../admin/fragment/add-role-model.jsp"%> 










































        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/user_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/user_controller.js' />"></script> 
        
        <script src="<c:url value='/static/js/service/role_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/role_controller.js' />"></script> 
        
<!--         <script type="text/javascript" data-main="./resources/public/js/run-create-user-app" -->
<!--         src="./resources/bower_components/requirejs/require.js"></script> -->
        
 

      
      

<script type="text/javascript">
 $('#memberModal').on('hidden.bs.modal', function () {
 	 window.location.reload();
	 
	});

 $('#removeModel').on('hidden.bs.modal', function () {
	 window.location.reload();
	});
 
 
 $('#addRoleModel').on('hidden.bs.modal', function () {
 	 window.location.reload();
	 
  });
 </script>
 
 
 
 </body>
</html>