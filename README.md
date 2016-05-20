<h1>Admin Tool</h1>

TODO: CONTENT





















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
	</head>



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
      
      
      <div id="divID" ng-controller="RoleController as ctrl">
      
<!--           <div style="float: right"> 
				<a  ng-click="ctrl.fetchAllRoles()" class="btn btn-default btn-info  btn-sm" id="refresh-member">
					<i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;                      
				 </a>
			</div>  -->
						
			<br /> <br /> 
      
      &nbsp;<a class="btn btn-default btn-info btn-sm" style="vertical-align:top !important" id="role-refresh"><i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;</a>
    </div>
</div>

<p/>
<div id="div-roles-list-0">



<div class="div-table-info">
    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>
</div>

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
              
              
              <td style="text-align:right">
              
              <span ng-bind=r.id"></span>              
              </td>
              
              
              
              
              
              <td>
                <a href="#" class="role-edit" data-role-id="1">
                 <span class="label" style="vertical-align:baseline !important;background-color:#c32113 !important; color:White !important">{{ r.name}}</span>
                 
                </a>

              </td>
              <td style="text-align:center">1</td>
              <td><div class="expander">People who care about role and member management</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">27 Apr 2016 00:45:37</div><div class="muted table-date-relative">19 days ago</div></td>
          </tr>
          
          
          
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
                    <input  data-role-id="2"  class="role-select" type="checkbox" />
              </td>
              <td style="text-align:right">2</td>
              <td>
                <a href="#" class="role-edit" data-role-id="2"><span class="label" style="vertical-align:baseline !important;background-color:#1d4d14 !important; color:White !important">Editor</span></a>

              </td>
              <td style="text-align:center">2</td>
              <td><div class="expander">Who has permission to edit something</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:37:07</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
                    <input  data-role-id="3"  class="role-select" type="checkbox" />
              </td>
              <td style="text-align:right">3</td>
              <td>
                <a href="#" class="role-edit" data-role-id="3"><span class="label" style="vertical-align:baseline !important;background-color:#0d5e96 !important; color:White !important">Viewer</span></a>

              </td>
              <td style="text-align:center">2</td>
              <td><div class="expander">Who has permission to view something</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:36:59</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">4</td>
              <td>
                <a href="#" class="role-edit" data-role-id="4"><span class="label" style="vertical-align:baseline !important;background-color:#740711 !important; color:White !important">Blocked</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Blocked members for some reason</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:32:52</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">5</td>
              <td>
                <a href="#" class="role-edit" data-role-id="5"><span class="label" style="vertical-align:baseline !important;background-color:#86cc71 !important; color:White !important">Self Registered</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which registered independently via public UI </div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:33:35</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">6</td>
              <td>
                <a href="#" class="role-edit" data-role-id="6"><span class="label" style="vertical-align:baseline !important;background-color:#e75560 !important; color:White !important">Not Activated</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which are not activated using notification email</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:36:29</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">7</td>
              <td>
                <a href="#" class="role-edit" data-role-id="7"><span class="label" style="vertical-align:baseline !important;background-color:#3aa0df !important; color:White !important">API Members</span></a>

              </td>
              <td style="text-align:center">2</td>
              <td><div class="expander">Members which use API for some purposes </div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:34:58</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">8</td>
              <td>
                <a href="#" class="role-edit" data-role-id="8"><span class="label" style="vertical-align:baseline !important;background-color:#35a220 !important; color:White !important">Self Activated</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which activated their accounts</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 May 2012 11:15:15</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 Jun 2012 12:35:30</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">9</td>
              <td>
                <a href="#" class="role-edit" data-role-id="9"><span class="label" style="vertical-align:baseline !important;background-color:#1973cc !important; color:White !important">A-SocialSignIn</span></a>

              </td>
              <td style="text-align:center">1</td>
              <td><div class="expander">Members which signed in via Social Networks</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">21 Aug 2012 16:02:59</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">21 Aug 2012 17:24:24</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">10</td>
              <td>
                <a href="#" class="role-edit" data-role-id="10"><span class="label" style="vertical-align:baseline !important;background-color:#40afe5 !important; color:White !important">Twitter</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via Twitter</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">21 Aug 2012 16:03:24</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:02:58</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">11</td>
              <td>
                <a href="#" class="role-edit" data-role-id="11"><span class="label" style="vertical-align:baseline !important;background-color:#425a9f !important; color:White !important">Facebook</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via Facebook</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">21 Aug 2012 16:03:35</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:03:18</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">12</td>
              <td>
                <a href="#" class="role-edit" data-role-id="12"><span class="label" style="vertical-align:baseline !important;background-color:#4763e2 !important; color:White !important">Google</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via Google</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">21 Aug 2012 16:03:45</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:03:37</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">13</td>
              <td>
                <a href="#" class="role-edit" data-role-id="13"><span class="label" style="vertical-align:baseline !important;background-color:#9400b1 !important; color:White !important">Yahoo</span></a>

              </td>
              <td style="text-align:center">1</td>
              <td><div class="expander">Members which signed in via Yahoo</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">21 Aug 2012 16:03:53</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:03:59</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">14</td>
              <td>
                <a href="#" class="role-edit" data-role-id="14"><span class="label" style="vertical-align:baseline !important;background-color:#7796c0 !important; color:White !important">Live Journal</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via Live Journal</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 17:42:42</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:04:43</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">15</td>
              <td>
                <a href="#" class="role-edit" data-role-id="15"><span class="label" style="vertical-align:baseline !important;background-color:#eb6413 !important; color:White !important">Blogger</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via Blogger</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 17:42:49</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:05:33</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">16</td>
              <td>
                <a href="#" class="role-edit" data-role-id="16"><span class="label" style="vertical-align:baseline !important;background-color:#f7931e !important; color:White !important">OpenID</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via OpenID</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 17:43:00</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:05:52</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">17</td>
              <td>
                <a href="#" class="role-edit" data-role-id="17"><span class="label" style="vertical-align:baseline !important;background-color:#64b653 !important; color:White !important">My OpenID</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via myOpenID</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 20:37:23</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:06:09</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">18</td>
              <td>
                <a href="#" class="role-edit" data-role-id="18"><span class="label" style="vertical-align:baseline !important;background-color:#328cbd !important; color:White !important">LDAP</span></a>

              </td>
              <td style="text-align:center"></td>
              <td><div class="expander">Members which signed in via LDAP Directory</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 20:37:23</div><div class="muted table-date-relative">3 years ago</div></td>
              <td style="white-space:nowrap"><div class="table-date-full">22 Aug 2012 22:06:09</div><div class="muted table-date-relative">3 years ago</div></td>
          </tr>
        </tbody>
</table>

<div class="div-table-info">
    <div class="div-table-info-fl">Showing <b>1</b> to <b>18</b> of <b>18</b> entries</div>    
</div>
</div>	



      </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>

		 
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
        <script src="<c:url value='/static/js/app.js' />"> </script>
        <script src="<c:url value='/static/js/service/role_service.js' />"></script>
        <script src="<c:url value='/static/js/controller/role_controller.js' />"></script> 
        
</body>

