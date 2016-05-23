<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
	

<html>



<head>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

</head>




<body ng-app="myApp"  class="ng-cloak" data-spy="scroll" data-target=".subnav" data-offset="50">
 
 <div class="wrapper">
        <div class="container">
			<h2>Fields</h2>
			<div id="general-message"></div>
			<div class="subnav" style="padding:7px">
			   <a data-toggle="modal" data-target="#fieldModel" class="btn btn-default btn-success btn-sm" style="vertical-align:top !important" id="role-add"><i class="glyphicon glyphicon-tasks"></i>  Add</a>
			   <a data-toggle="modal" data-target="#fieldRoleModel"  class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="role-remove"><i class="glyphicon glyphicon-minus icon-white"></i> Remove</a>&nbsp;
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

<%-- <form:form commandName="user" cssClass="form-horizontal registrationForm">	 --%>			
<div ng-controller="FieldController as ctrl">
					
					
					   <div style="float: right"> 
							<a  ng-click="ctrl.fetchAllFields()" class="btn btn-default btn-info  btn-sm" id="refresh-member">
					          <i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;                      
					         </a>
						</div> 
						<br><br>
						
						<table id="roles-list-0"  width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-condensed" data-items-per-page="40"  data-current-page="1"  data-total-items="18" data-sort-column="1" data-sort-order-asc="true">
							
						    <thead>
						        <tr>
						            <th style="width:3%;text-align:center"><input type="checkbox" class="role-select-all-chb"/></th>
						            <th class="role-sort-column" style="width:50px;">ID<span class="css_right ui-icon ui-icon-triangle-1-n"/></th>
						            <th class="role-sort-column" style="width:200px;">Field Name<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>                        
									<th class="role-sort-column" style="width:200px;" >Description<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						            <th class="role-sort-column">Enabled<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
									<th class="role-sort-column table-date-td-width">Created<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						            <th class="role-sort-column table-date-td-width">Modified<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
						        </tr>
						    </thead>
						    <tbody>
						          <tr ng-repeat="f in ctrl.fields">
						               <td style="text-align:center" class="table-first-column" style="width:2%">
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
						              <td style="white-space:nowrap">
<!-- 						               <input  id="audit-event-select-10246" class="audit-event-select" data-audit-event-id="10246" type="checkbox" />
						                <input type="checkbox" name="" id="1"><br/>		 -->				               
						               <div class="table-date-full">{{ f.enabled}}</div>
						               
						               
						          <!-- 
									 <div class="col-sm-10">
										<form:input path="name" cssClass=" input-xlarge login-form-field form-control" />
										<form:errors path="name" />
								    </div>
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
						</div>
															
<%-- </form:form>	 --%>					
						
						
						
						<!-- ======== Bottom table status bar  ======== -->
						<div class="div-table-info">
						    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>    
						</div>	
				</div>	<!-- /div-roles-list-0 -->
    </div><!--/.fluid-container-->
  </div>




		<!-- Add Role Model -->
	<%-- 	<%@ include file="./admin/fragment/role-model.jsp"%>  --%>
		
		
		<!-- Add Remove Role Model -->
	<%-- 	<%@ include file="./admin/fragment/role-remove-model.jsp"%> 
 --%>




        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/field_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/field_controller.js' />"></script> 




<script type="text/javascript">
 $('#fieldModel').on('hidden.bs.modal', function () {
 	 window.location.reload();
	});
 
   $('#removeFieldModel').on('hidden.bs.modal', function () {
	 window.location.reload();
	}); 
</script>







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
<script type="text/javascript">
function UpdateCheckBoxStatus ()
{
    var CurrentChoice = $('#choiceSelector').val();

    $.ajax({
        url: "<spring:url value='/register/available.html' />",
        data: { "selected": CurrentChoice },
        type: "post",
        dataType: "json",

        success: function (data)
        {
            SetCheckbox($('#changingCheckboxes').children("input:[type='checkbox']"), true);
            $.each(data.disabled, function ()
            {
               SetCheckbox($('#changingCheckboxes #' + this), false);
            });
        }
    });

}

/// Sets the checkbox to enabled or disabled
/// @param th Jquery reference of one or more checkboxes
/// @param usable True/False if the checkbox is enabled/disabled
function SetCheckbox (th, usable)
{
    if (usable)
        th.removeAttr("disabled");
    else if (!usable)
        th.attr("disabled", true);
}


$(function ()
{
    $('#choiceSelector').change(UpdateCheckBoxStatus);
    UpdateCheckBoxStatus(); //run for page load
});

</script>
-->




</body>
</html>



