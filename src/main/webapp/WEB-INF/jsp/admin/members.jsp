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

<link rel="stylesheet" href="./resources/bower_components/angular-ui-switch/angular-ui-switch.min.css"/>

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














.switch {
  /* background: #fff; */
  background: #7B7072;
  border: 1px solid #dfdfdf;
  position: relative;
  display: inline-block;
  box-sizing: content-box;
  overflow: visible;
  /* width: 52px; */
  width: 45px;
  /* height: 30px; */
  height: 15px;
  padding: 0px;
  margin: 0px;
  border-radius: 20px;
  cursor: pointer;
  box-shadow: rgb(223, 223, 223) 0px 0px 0px 0px inset;
  transition: 0.3s ease-out all;
  -webkit-transition: 0.3s ease-out all;
  top: -1px;
}
/*adding a wide width for larger switch text*/
.switch.wide {
  width:80px;
}
.switch small {
  background: #fff;
  border-radius: 100%;
  box-shadow: 0 1px 3px rgba(0,0,0,0.4);
/*   width: 30px;
  height: 30px; */
  width: 15px;
  height: 15px;
  position: absolute;
  top: 0px;
  left: -7px;
  margin-left: 8px;
  transition: 0.3s ease-out all;
  -webkit-transition: 0.3s ease-out all;
}
.switch.checked {
  background: rgb(100, 189, 99);
  border-color: rgb(100, 189, 99);
}
.switch.checked small {
  left: 22px;
}
/*wider switch text moves small further to the right*/
.switch.wide.checked small {
  left:52px;
}
/*styles for switch-text*/
.switch .switch-text {
  font-family:Arial, Helvetica, sans-serif;
  font-size:13px;
}

.switch .off {
  display:block;
  position: absolute;
  right: 10%;
  /* top: 25%; */
  top: 0;
  z-index: 0;
  /* color:#A9A9A9; */
  color: #fff;
  
  font-size: 12px;
  font-weight: bold;
}

.switch .on {
  display:none;
   z-index: 0;
  /* color:#fff; */
  color: #060202;
  position: absolute;
  /* top: 25%; */
  top: 0;
  left: 9%;
  font-size: 12px;
  font-weight: bold;
}

.switch.checked .off {
  display:none;
}

.switch.checked .on {
  display:block;

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

		<div id="myctrl" ng-controller="UserController as ctrl">
						
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
						            <th class="role-sort-column">2F Auth <span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
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
						                  <a ng-click='onAddRoleSaveUser(u)' class="member-add-role-inline-link btn-xs btn btn-default" style="background-color: #4F5454; color:white;" data-toggle="modal" data-target="#addRoleModel"  data-member-id="1" data-member-name="Admin" href="#">Add Roles</a>
<!-- 						                   <input ng-checked={{r.enabled}} type="checkbox" ng-click='onAddOrRemoveRole(r, u)' ng-model="selection.ids[r.id]" name="group"  />  -->
						               </div>
						               
    
						            </td>
						            <!-- ================= Roles ================-->
						            <td id="member-roles-all-1">
						               <div style="display: inline;" ng-repeat="r in u.roles">
<!-- 						                  <span class={{r}}>{{r | limitTo : 5 : 5}}</span> -->
	

                                       <div class="label member-role-label" ng-style={background:'{{r.roleBackColor}}'}>{{r.roleName}}
<!-- <div  data-toggle="modal" data-target="#removeModelConfirm" ng-click='onRemoveUserRole(r.roleId, u.email)' class="member-role-label-cross role-member-remove-cross" >&nbsp;|&nbsp;<b>x</b></div></div> -->
						        
<!-- <div data-toggle="modal" data-target="#removeModelConfirm" data-title="Delete User" data-message="Are you sure you want to delete this user ?" ng-click='onRemoveUserRole(r.roleId, u.email)' class="member-role-label-cross role-member-remove-cross" >&nbsp;|&nbsp;<b>x</b></div></div> -->					                  
<div    confirmed-click="onRemoveUserRole(r.roleId, u.email)"  ng-confirm-click="Are you sure to remove role '{{r.roleName}}' from user --- {{ u.name }}?"  class="member-role-label-cross role-member-remove-cross" >&nbsp;|&nbsp;<b>x</b></div></div>


						               </div>
						            </td>
						            
						            
						            <!-- ================= Two Factor Auth ================-->
						            
						             <td  align="center"  style="width: 10%">
  										<switch ng-checked={{u.enabled}} type="checkbox" ng-model="u.enabled" on="Yes" off="No" ng-change="onTwoAuthEnableOrDisable(u)"></switch>
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
	   
	   <%@ include file="../admin/fragment/role-remove-confirm-model.jsp"%> 






        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/user_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/user_controller.js' />"></script> 
        
        <script src="<c:url value='/static/js/service/role_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/role_controller.js' />"></script> 
        
        <!-- ==== I NEED TO ADD THIS IN ORDER TO PREVENT  
        	 ==== Error: [$injector:nomod] Module 'uiSwitch' is not available!
        	 ===== EXCEPTION, BUT I NEED TO FIND A WAY TO INJECT THE DEPENDENCY
        	 ===== ONLY TO FieldsManagement.jsp file
        	 ===== As angular-ui-switch.js IS SUPPOSED BY BE USED BY THAT FILE -->
            <script src="../resources/bower_components/angular-ui-switch/angular-ui-switch.js"></script>


<script type="text/javascript">
 $('#memberModal').on('hidden.bs.modal', function () {
 	 window.location.reload();
	 
	});

 $('#removeModel').on('hidden.bs.modal', function () {
	 window.location.reload();
	});
 
 /*
 $('#addRoleModel').on('hidden.bs.modal', function () {
 	 window.location.reload();
	 
  });
 */
 
 
 </script>
 
 
 
 
 
 
 <!-- Dialog show event handler -->
<script type="text/javascript">
  $('#removeModelConfirm').on('show.bs.modal', function (e) {
      $message = $(e.relatedTarget).attr('data-message');
      $(this).find('.modal-body p').text($message);
      $title = $(e.relatedTarget).attr('data-title');
      $(this).find('.modal-title').text($title);

      // Pass form reference to modal for submission on yes/ok
      var form = $(e.relatedTarget).closest('form');
      $(this).find('.modal-footer #confirm').data('form', form);
  });


  /*
  $('#removeModelConfirm').find('.modal-footer #confirm').on('click', function(){
	  alert("User Deleted");
	  
	  
	  angular.element('#myctrl').scope().onRemoveUserRole();
	  
	  
	  window.location.reload();
      $(this).data('form').submit();
  });
  */
</script>
 
 
 
 
 
 
 
 
 </body>
</html>