  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	 
  <body  ng-app="myApp"  class="ng-cloak" data-spy="scroll" data-target=".subnav" data-offset="50">
   
    <div class="wrapper">
        <div class="container">
            


<h2>Audit</h2>
<div id="general-message"></div>
<div class="subnav" style="padding:7px">
    <a class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="remove-event"><i class="glyphicon glyphicon-minus icon-white"></i> Remove</a>&nbsp;
    <a class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="remove-event-all"><i class="glyphicon glyphicon-minus icon-white"></i> Remove All</a>&nbsp;
    <div class="input-group" style="display:inline-block;vertical-align:top">
        <input type="text" id="audit-events-search" style="height:33px" />
        <button id="btn-audit-search" style="vertical-align:top;margin-left:-1px;" class="btn btn-default btn-info btn-sm" type="button"><i class="glyphicon glyphicon-search icon-white"></i></button>
    </div>
<!--     <a class="btn btn-default btn-info btn-sm" style="vertical-align:top !important;float:right" id="refresh-member"><i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;</a> -->
</div>
<br/>
<div id="div-audit-list-0">


<div class="div-table-info">
    <div class="div-table-info-fl">Showing <b>1</b> to <b>40</b> of <b>324</b> entries</div>
        <div class="pagination-custom div-table-info-fr" id="table-audit-events-pagination-top-audit-list-0" name="table-audit-events-pagination-top-audit-list-0"></div>
</div>


<div ng-controller="AuditController as ctrl">


	<div style="float: right"> 
		<a  ng-click="ctrl.fetchAllAudits()" class="btn btn-default btn-info  btn-sm" id="refresh-member">
			<i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;                      
		</a>
	</div> 
	<br><br>

<table id="audit-list-0"  width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-condensed" data-items-per-page="40"  data-current-page="1"  data-total-items="324"  data-sort-column="3" data-sort-order-asc="false" data-filter-audit-event-search="">
    <thead>
        <tr>
            <th style="text-align:center;width:3%"><input type="checkbox" class="audit-event-select-all-chb"/></th>
            <th class="role-sort-column" style="width:25px">&nbsp;<span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
            <th class="role-sort-column table-date-td-width">Created<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>            
            <th class="role-sort-column" style="width:5%">ID<span class="css_right ui-icon ui-icon-triangle-1-s"></span></th>
            <th class="role-sort-column" style="width:7%">Source<span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
            <th class="role-sort-column" style="width:7%">IP<span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
            <th class="role-sort-column" style="width:7%">Email<span class="css_right ui-icon ui-icon-carat-2-n-s"></span></th>
            <th class="role-sort-column" style="width:50%">Description<span class="css_right ui-icon ui-icon-carat-2-n-s"/></th>
        </tr>
    </thead>
    <tbody>
          <tr ng-repeat="a in ctrl.audits">
          
         	 <!-- ========== Checkbox =========== -->
              <td style="text-align:center" class="table-first-column">
              	<input  id="audit-event-select-10246" class="audit-event-select" data-audit-event-id="10246" type="checkbox" />
              </td>
              
              <!-- ========== Image =========== -->
              <td style="text-align:center">
              	<img src="/resources/img/{{a.imageType}}.png"/>
              </td>
             
             <!-- ========== Created =========== -->
              <td style="white-space:nowrap">
              	<div class="table-date-full"> {{a.created}}</div>
              	<!-- <div class="muted table-date-relative">a second ago</div> -->
              </td>
              
              <!-- ========== ID =========== -->
              <td style="text-align:right">{{a.id}}</td>
              
              <!-- ========== Source =========== -->
              <td style="text-align:center">{{a.source}}</td>
              
              <!-- ========== IP =========== -->
              <td style="text-align:center">{{a.ipAddress}}</td>
              
              <!-- ========== Email =========== -->
              <td style="text-align:right">{{a.email}}</td>
              
              <!-- ========== Description =========== -->
              <td>
              <div class="expander"  style="display:inline-block">{{a.description}}</div> 
                <!-- <div class="expander"  style="display:inline-block">Member &quot;semir tamir&quot;&lt;semirtamir@yahoo.com&gt; has been removed from role &quot;Editor&quot;</div>  -->
             </td>
          </tr>
          
          
    </tbody>
  </table> 
</div>   

<div class="div-table-info">
    <div class="div-table-info-fl">Showing <b>1</b> to <b>40</b> of <b>324</b> entries</div>
        <div  class="pagination-custom div-table-info-fr" id="table-audit-events-pagination-bottom-audit-list-0" name="table-audit-events-pagination-bottom-audit-list-0"></div>
</div>
 


        </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>
   </div> 



        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <!--   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script> -->
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/audit_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/audit_controller.js' />"></script> 

        <!-- ==== I NEED TO ADD THIS IN ORDER TO PREVENT  
        	 ==== Error: [$injector:nomod] Module 'uiSwitch' is not available!
        	 ===== EXCEPTION, BUT I NEED TO FIND A WAY TO INJECT THE DEPENDENCY
        	 ===== ONLY TO FieldsManagement.jsp file
        	 ===== As angular-ui-switch.js IS SUPPOSED BY BE USED BY THAT FILE -->
        <script src="../resources/bower_components/angular-ui-switch/angular-ui-switch.js"></script>




</body>
</html>
