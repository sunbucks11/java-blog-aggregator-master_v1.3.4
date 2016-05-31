<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<html>


<head>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		<link rel="stylesheet" href="./resources/bower_components/angular-ui-switch/angular-ui-switch.min.css"/>
		
		
<style type="text/css">
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
 
 <div class="wrapper" ng-controller="FieldController as ctrl">
        <div class="container">
			<h2>Fields</h2>
			<div id="general-message"></div>
			<div class="subnav" style="padding:7px">
			   <a data-toggle="modal" data-target="#fieldModel" class="btn btn-default btn-success btn-sm" style="vertical-align:top !important" id="role-add"><i class="glyphicon glyphicon-tasks"></i>  Add</a>
			   <a data-toggle="modal" data-target="#removeFieldModel"  class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="role-remove"><i class="glyphicon glyphicon-minus icon-white"></i> Remove</a>&nbsp;
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
			      &nbsp;
			      <!-- <a class="btn btn-default btn-info btn-sm" style="vertical-align:top !important" id="role-refresh"><i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;</a> -->
			    </div>
			</div>
			<p/>
			
			<div id="div-roles-list-0">
						<!-- ======== Top table status bar  ======== -->
						<div class="div-table-info">
						    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>
						</div>
						<!-- ======================================== -->

		
<!-- 				<div ng-controller="FieldController as ctrl"> -->
                    <div>



					   <div style="float: right"> 
							<a  ng-click="ctrl.fetchAllFields()" class="btn btn-default btn-info  btn-sm" id="refresh-member">
					          <i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;                      
					         </a>
						</div> 
						<br><br>
						
						<table id="roles-list-0"  width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-condensed" data-items-per-page="40"  data-current-page="1"  data-total-items="18" data-sort-column="1" data-sort-order-asc="true">
							
						    <thead>
						        <tr>
						            <th align="center" style="width:3%;text-align:center"><input type="checkbox" class="role-select-all-chb"/></th>
						            <th align="center" class="role-sort-column" style="width:50px;">ID<span class="css_right ui-icon ui-icon-triangle-1-n"/></th>
						            <th align="center" class="role-sort-column" style="width:200px;">Field Name<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>                        
									<th align="center" class="role-sort-column" style="width:200px;" >Description<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						            <th align="center" class="role-sort-column">Enabled<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
									<th align="center" class="role-sort-column table-date-td-width">Created<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						            <th align="center" class="role-sort-column table-date-td-width">Modified<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						        </tr>
						    </thead>
						    <tbody>
						          <tr ng-repeat="f in ctrl.fields track by f.id">
						               <td style="text-align:center" class="table-first-column" style="width:2%">
						               <input type="checkbox" class="role-select-all-chb"/>
						              </td>
						              
						              <!-- ==========  Field ID ========== -->
						              <td style="text-align:right">
						                {{ f.id}}
						               <!-- <span ng-bind=r.id"></span>   -->
						              </td>
						              
						              <!-- ==========  Field Name ========== -->
						              <td>
						                <a href="#" class="role-edit" data-role-id="1">
						                <span class="label" style="vertical-align:baseline !important;background-color:#c32113 !important; color:White !important">{{ f.name}}</span>
						                </a> 
						              </td>
						              
						              <!-- ==========  Comment  ========== -->
						             <!--  <td style="text-align:center">{{f.member}}</td> -->
						             
						              <!-- ==========  Comment  ========== --> 
						              <td><div class="expander">{{ f.comment}}</div></td>
						              
						              <!-- ==========  Enabled  ========== --> 
						              <td  align="center"  style="width: 10%">
	 						           <!-- <input  id="audit-event-select-10246" class="audit-event-select" data-audit-event-id="10246" type="checkbox" />  -->
 	 						           <!-- <pre ng-bind="selection.ids | json"></pre> -->
	 						            
	 						           <!--
	 						           <div>
										  <input ng-checked={{f.enabled}} type="checkbox" ng-click='onEnableOrDisable(f)' ng-model="selection.ids[f.id]" name="group"  /> 
 
										</div>
										-->

  										<switch ng-checked={{f.enabled}} type="checkbox" ng-model="f.enabled" on="Yes" off="No" ng-change="onEnableOrDisable(f)"></switch>
  											<!-- 
  											<p>
  										   		selection.ids: {{selection.ids[f.id]}} <br>
												f.enabled: {{f.enabled}}
  										   </p>
  										   -->
						              </td>
						              
	
						      		<!-- ==========  Created Date  ========== --> 
						      		 <td style="white-space:nowrap">
						               <div class="table-date-full">{{ f.createdDate}}</div>
						               <!-- 
						              	<div class="muted table-date-relative">3 years ago</div>
						              -->
						              </td>
						              
						            <!-- ==========  Modified Date  ========== --> 
						      		 <td style="white-space:nowrap">
						               <div class="table-date-full">{{ f.modifiedDate}}</div>
						               <!-- 
						              	<div class="muted table-date-relative">3 years ago</div>
						              -->
						              </td>  
						          </tr>
						        </tbody>
							</table>
							

								<!-- =============  Body ==============-->
								<!-- 
								<div class="modal-body" ng-controller="FieldController as ctrl" style="overflow-y: auto;">
									<div class="bootstrap-dialog-body">
									  <br> <br> <br>
					   				</div> 
							    </div>	
							    -->
							    
							    
							    
					</div>

						<!-- ======== Bottom table status bar  ======== -->
						<div class="div-table-info">
						    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>    
						</div>	
				</div>	<!-- /div-roles-list-0 -->
    	</div><!--/.fluid-container-->




		<!-- Add Role Model -->
	 	<%@ include file="./admin/fragment/field-model.jsp"%> 
		
		
		<!-- Add Remove Role Model -->
		<%@ include file="./admin/fragment/field-remove-model.jsp"%> 

</div>







        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/field_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/field_controller.js' />"></script> 

        <script src="../resources/bower_components/angular-ui-switch/angular-ui-switch.js"></script>



<script type="text/javascript">
 $('#fieldModel').on('hidden.bs.modal', function () {
 	 window.location.reload();
	});
 
   $('#removeFieldModel').on('hidden.bs.modal', function () {
	 window.location.reload();
	}); 
   
   
</script>













</body>
</html>
