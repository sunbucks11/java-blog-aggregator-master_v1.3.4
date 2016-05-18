


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>Roles - Role &amp; Member</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
    <link href="/Content/style.css" rel="stylesheet" type="text/css" />
    <link href="/Content/themes/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <link href="/Scripts/plugins/jcrop/jquery.Jcrop.css" rel="stylesheet" type="text/css" />
    <link href="/Scripts/plugins/pagination/pagination.css" rel="stylesheet" type="text/css" />
    <link href="/Scripts/plugins/farbtastic/farbtastic.css" rel="stylesheet" type="text/css" />
    <link href="/Scripts/plugins/farbtastic/gradient.css" rel="stylesheet" type="text/css" />
    <link href="/Scripts/plugins/bootstrap3-dialog/css/bootstrap-dialog.min.css" rel="stylesheet" type="text/css" />

    <script src="/Scripts/plugins/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/plugins/jquery/jquery-ui.1.11.2.custom.min.js" type="text/javascript"></script>
    <script src="/Scripts/plugins/text-exapnder/jquery.expander.min.js" type="text/javascript"></script>
    
    <script src="/bundles/modernizr?v=-WIAromq65JSz3XFc6pkn5ShssCsrvDd_i-k5bWlpcw1"></script>


    <script src="/Scripts/public/simple.tools.core.js" type="text/javascript"></script>


    
    <script src="/Scripts/plugins/slickswitch/js/jquery.slickswitch.js" type="text/javascript"></script>
    <link href="/Scripts/plugins/slickswitch/css/slickswitch.css" rel="stylesheet" type="text/css" />    

    <script src="/Scripts/plugins/facebookwall/jquery.neosmart.fb.wall.js" type="text/javascript"></script>
    <link href="/Scripts/plugins/facebookwall/jquery.neosmart.fb.wall.css" rel="stylesheet" type="text/css" />   
 
    <script src="/Scripts/plugins/twitterwall/jquery.tweet.js" type="text/javascript"></script>
    <link href="/Scripts/plugins/twitterwall/jquery.tweet.css" rel="stylesheet" type="text/css" /> 
        
    <link runat="server" rel="shortcut icon" href="http://localhost:50000/content/images/favicon.ico" type="image/x-icon" />
    <link runat="server" rel="icon" href="http://localhost:50000/content/images/favicon.ico" type="image/ico" />
    
   </head>
    
<body data-spy="scroll" data-target=".subnav" data-offset="50">
    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/Admin">
                    <b>Role &amp; Member</b>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li ><a href="/Admin"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                        <li class="active"> <a href="/Admin/Roles"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Roles</a></li>
                        <li ><a href="/Admin/Members"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Members</a></li>
                        <li ><a href="/Admin/Fields"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Fields</a></li>
                        <li ><a href="/Admin/Domains"><span class="glyphicon glyphicon-th" aria-hidden="true"></span> Domains</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-pushpin" aria-hidden="true"></span> More<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li ><a href="/Admin/Audit"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="margin-right:10px;"></span> Audit</a></li>
                                <li class="divider"></li>
                                <li ><a href="/Admin/Tools"><span class="glyphicon glyphicon-briefcase" aria-hidden="true" style="margin-right:10px;"></span> Tools</a></li>
                                <li ><a href="/Admin/Settings"><span class="glyphicon glyphicon-cog" aria-hidden="true" style="margin-right:10px;"></span> Settings</a></li>
                                <li class="divider"></li>
                                <li ><a href="/Admin/API"><span class="glyphicon glyphicon-info-sign" aria-hidden="true" style="margin-right:10px;"></span> API</a></li>
                                <li ><a href="/Admin/Help"><span class="glyphicon glyphicon-book" aria-hidden="true" style="margin-right:10px;"></span> Help</a></li>
                                <li ><a href="/Admin/FAQ"><span class="glyphicon glyphicon-question-sign" aria-hidden="true" style="margin-right:10px;"></span>FAQ</a></li>
                            </ul>
                        </li>
                    </ul>
                        <div class="btn-group pull-right" style="margin-top:8px">
                            <a class="btn dropdown-toggle btn-default" data-toggle="dropdown" href="#" title="&lt;admin@demo.com&gt;" style="padding: 1px 4px 1px 1px !important"><img src="/Avatar/ozj15c6vx0smonb6n6mlgeve.jpg" style="width:30px;height:30px" class="img-circle" /> Admin <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/Profile">Profile</a></li>
                                <li class="divider"></li>
                                <li><a href="/SignOut">Sign Out</a></li>
                            </ul>
                        </div>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </nav>
    
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
          <tr>
              <td style="text-align:center" class="table-first-column" style="width:2%">
              </td>
              <td style="text-align:right">1</td>
              <td>
                <a href="#" class="role-edit" data-role-id="1"><span class="label" style="vertical-align:baseline !important;background-color:#c32113 !important; color:White !important">Admins</span></a>

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
<script type="text/javascript">App.InitExpander();</script>
</div>	

<template id="div-roles-importing" data-dialog-tittle="Importing Role <span class='glyphicon glyphicon-refresh glyphicon-refresh-animate importing-message-spinner'></span>">
    <div id="importing-notify-message"></div>
    <h3 class="importing-message-spinner">&nbsp;&nbsp;In progress, please wait ...</h3>
</template>

<script type="text/javascript">
    $(document).ready(function () {
        App.RolesManagement = new RolesManagement();
        App.RolesManagement.initManagement("roles-list-0","/Admin/Roles");

        App.FieldsManagement = new FieldsManagement();
        App.FieldsManagement.initManagement("/Admin/Fields");
    });
</script>

        </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>
    <footer class="container">
        <p>� Company 2012 Simple Tools - Member Role  Management&nbsp&nbsp&nbsp<span class="muted">Version: 1.7 from 2016/04/26 21:54:18</span></p>
    </footer>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="/bundles/plugins?v=dGx7fBlXqFo41g2apYhzjO0xEUmM46wL-s4j2d7mazQ1"></script>

    <script src="/bundles/admin?v=GUY2qrG7o2gKg0_jqGXf5FmwhWEI1Onx3HAkHrjKH_w1"></script>


    <script type="text/javascript">
    $(function () {
        App.BaseURL("");
    });
    </script>

    
    <style type="text/css">
        .subnav {
                width: 100%;
                background-color: #eeeeee !important;
                background-repeat: repeat-x;
                background-image: none !important;                
                border: 1px solid #e5e5e5 !important;
                -webkit-border-radius: 4px;
                -moz-border-radius: 4px;
                border-radius: 4px;
        }
    </style>

<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"c284b8b1bb4745a58c4cb24f8abe921f"}
</script>
<script type="text/javascript" src="http://localhost:12274/42b2f3012486436e8947fd10d6cd3e2b/browserLink" async="async"></script>
<!-- End Browser Link -->

</body>
</html>
