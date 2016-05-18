


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>audit - Role &amp; Member</title>
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
                        <li > <a href="/Admin/Roles"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Roles</a></li>
                        <li ><a href="/Admin/Members"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Members</a></li>
                        <li ><a href="/Admin/Fields"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Fields</a></li>
                        <li ><a href="/Admin/Domains"><span class="glyphicon glyphicon-th" aria-hidden="true"></span> Domains</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-pushpin" aria-hidden="true"></span> More<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="active"><a href="/Admin/Audit"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="margin-right:10px;"></span> Audit</a></li>
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
            


<h2>Audit</h2>
<div id="general-message"></div>
<div class="subnav" style="padding:7px">
    <a class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="remove-event"><i class="glyphicon glyphicon-minus icon-white"></i> Remove</a>&nbsp;
    <a class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="remove-event-all"><i class="glyphicon glyphicon-minus icon-white"></i> Remove All</a>&nbsp;
    <div class="input-group" style="display:inline-block;vertical-align:top">
        <input type="text" id="audit-events-search" style="height:33px" />
        <button id="btn-audit-search" style="vertical-align:top;margin-left:-1px;" class="btn btn-default btn-info btn-sm" type="button"><i class="glyphicon glyphicon-search icon-white"></i></button>
    </div>
    <a class="btn btn-default btn-info btn-sm" style="vertical-align:top !important;float:right" id="refresh-member"><i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;</a>
</div>
<br/>
<div id="div-audit-list-0">


<div class="div-table-info">
    <div class="div-table-info-fl">Showing <b>1</b> to <b>40</b> of <b>324</b> entries</div>
        <div class="pagination-custom div-table-info-fr" id="table-audit-events-pagination-top-audit-list-0" name="table-audit-events-pagination-top-audit-list-0"></div>
</div>

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
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10246" class="audit-event-select" data-audit-event-id="10246" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">17 May 2016 02:10:21</div><div class="muted table-date-relative">a second ago</div></td>
              <td style="text-align:right">10246</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member &quot;semir tamir&quot;&lt;semirtamir@yahoo.com&gt; has been removed from role &quot;Editor&quot;</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10245" class="audit-event-select" data-audit-event-id="10245" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">17 May 2016 02:09:45</div><div class="muted table-date-relative">a second ago</div></td>
              <td style="text-align:right">10245</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Members&#39; CSV file has been requested, Member count:6</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10244" class="audit-event-select" data-audit-event-id="10244" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">16 May 2016 23:58:29</div><div class="muted table-date-relative">15 minutes ago</div></td>
              <td style="text-align:right">10244</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10243" class="audit-event-select" data-audit-event-id="10243" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">16 May 2016 23:11:19</div><div class="muted table-date-relative">an hour ago</div></td>
              <td style="text-align:right">10243</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10242" class="audit-event-select" data-audit-event-id="10242" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">16 May 2016 22:09:22</div><div class="muted table-date-relative">2 hours ago</div></td>
              <td style="text-align:right">10242</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10241" class="audit-event-select" data-audit-event-id="10241" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">16 May 2016 22:09:09</div><div class="muted table-date-relative">2 hours ago</div></td>
              <td style="text-align:right">10241</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to /SignOut</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10240" class="audit-event-select" data-audit-event-id="10240" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">16 May 2016 22:09:05</div><div class="muted table-date-relative">2 hours ago</div></td>
              <td style="text-align:right">10240</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10239" class="audit-event-select" data-audit-event-id="10239" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">16 May 2016 22:08:53</div><div class="muted table-date-relative">2 hours ago</div></td>
              <td style="text-align:right">10239</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member &lt;admin@demo&gt;  has didn&#39;t log in. Wrong e-mail.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10238" class="audit-event-select" data-audit-event-id="10238" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">09 May 2016 21:37:32</div><div class="muted table-date-relative">7 days ago</div></td>
              <td style="text-align:right">10238</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10237" class="audit-event-select" data-audit-event-id="10237" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">08 May 2016 16:14:09</div><div class="muted table-date-relative">8 days ago</div></td>
              <td style="text-align:right">10237</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10236" class="audit-event-select" data-audit-event-id="10236" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">07 May 2016 02:16:25</div><div class="muted table-date-relative">9 days ago</div></td>
              <td style="text-align:right">10236</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10235" class="audit-event-select" data-audit-event-id="10235" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">07 May 2016 02:16:05</div><div class="muted table-date-relative">9 days ago</div></td>
              <td style="text-align:right">10235</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to /SignOut</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10234" class="audit-event-select" data-audit-event-id="10234" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">07 May 2016 02:13:04</div><div class="muted table-date-relative">9 days ago</div></td>
              <td style="text-align:right">10234</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10233" class="audit-event-select" data-audit-event-id="10233" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">07 May 2016 02:12:19</div><div class="muted table-date-relative">9 days ago</div></td>
              <td style="text-align:right">10233</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to /SignOut</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10232" class="audit-event-select" data-audit-event-id="10232" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">07 May 2016 01:39:06</div><div class="muted table-date-relative">9 days ago</div></td>
              <td style="text-align:right">10232</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10231" class="audit-event-select" data-audit-event-id="10231" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">07 May 2016 00:10:50</div><div class="muted table-date-relative">10 days ago</div></td>
              <td style="text-align:right">10231</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10230" class="audit-event-select" data-audit-event-id="10230" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 May 2016 21:23:24</div><div class="muted table-date-relative">10 days ago</div></td>
              <td style="text-align:right">10230</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10229" class="audit-event-select" data-audit-event-id="10229" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 May 2016 21:22:53</div><div class="muted table-date-relative">10 days ago</div></td>
              <td style="text-align:right">10229</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10228" class="audit-event-select" data-audit-event-id="10228" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">06 May 2016 03:20:35</div><div class="muted table-date-relative">10 days ago</div></td>
              <td style="text-align:right">10228</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10227" class="audit-event-select" data-audit-event-id="10227" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 23:26:34</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10227</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">localhost</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10226" class="audit-event-select" data-audit-event-id="10226" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 22:31:54</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10226</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10225" class="audit-event-select" data-audit-event-id="10225" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 22:31:38</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10225</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to /SignOut</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10224" class="audit-event-select" data-audit-event-id="10224" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 22:31:38</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10224</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10223" class="audit-event-select" data-audit-event-id="10223" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 22:31:23</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10223</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to /SignOut</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10222" class="audit-event-select" data-audit-event-id="10222" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 22:31:21</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10222</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-10221" class="audit-event-select" data-audit-event-id="10221" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">05 May 2016 00:53:43</div><div class="muted table-date-relative">11 days ago</div></td>
              <td style="text-align:right">10221</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-298" class="audit-event-select" data-audit-event-id="298" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">29 Apr 2016 20:56:07</div><div class="muted table-date-relative">17 days ago</div></td>
              <td style="text-align:right">298</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-297" class="audit-event-select" data-audit-event-id="297" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:47</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">297</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block"> Member &quot;Admin&quot;&lt;admin@demo.com&gt; has logged in successfully.</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-296" class="audit-event-select" data-audit-event-id="296" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:23</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">296</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Changed: rules-password-failed-attempts-redirect -&gt; from &quot;&quot; to &quot;  &quot;</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-295" class="audit-event-select" data-audit-event-id="295" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:23</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">295</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Changed: rules-redirect-after-logout -&gt; from &quot;http://localhost:50000/&quot; to &quot;&quot;</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-294" class="audit-event-select" data-audit-event-id="294" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:23</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">294</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Changed:  -&gt; from &quot;&quot; to &quot;&quot;</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-293" class="audit-event-select" data-audit-event-id="293" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/tick-circle.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:23</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">293</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Changed:  -&gt; from &quot;&quot; to &quot; Self Registered; Not Activated &quot;</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-292" class="audit-event-select" data-audit-event-id="292" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">292</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-291" class="audit-event-select" data-audit-event-id="291" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">291</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-290" class="audit-event-select" data-audit-event-id="290" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">290</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-289" class="audit-event-select" data-audit-event-id="289" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">289</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-288" class="audit-event-select" data-audit-event-id="288" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">288</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-287" class="audit-event-select" data-audit-event-id="287" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">287</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-286" class="audit-event-select" data-audit-event-id="286" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">286</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
          <tr>
              <td style="text-align:center" class="table-first-column"><input  id="audit-event-select-285" class="audit-event-select" data-audit-event-id="285" type="checkbox" /></td>
              <td style="text-align:center"><img src="/content/images/exclamation.png"/></td>
              <td style="white-space:nowrap"><div class="table-date-full">28 Apr 2016 02:34:00</div><div class="muted table-date-relative">18 days ago</div></td>
              <td style="text-align:right">285</td>
              <td style="text-align:center">App</td>
              
                <td style="text-align:center">127.0.0.1</td>
              
                <td style="text-align:right">admin@demo.com</td>
              
                <td>
                    <div class="expander"  style="display:inline-block">Member tries to enter admin UI by direct link: http://localhost:50000/ and will be redirected to http://localhost:50000/</div> 
                </td>
          </tr>
    </tbody>
</table>    

<div class="div-table-info">
    <div class="div-table-info-fl">Showing <b>1</b> to <b>40</b> of <b>324</b> entries</div>
        <div  class="pagination-custom div-table-info-fr" id="table-audit-events-pagination-bottom-audit-list-0" name="table-audit-events-pagination-bottom-audit-list-0"></div>
</div>
<script type="text/javascript">App.InitExpander();</script></div>	 


<script type="text/javascript">
    $(document).ready(function () {
        App.AuditEventsManagement = new AuditEventsManagement();
        App.AuditEventsManagement.initManagement("audit-list-0","/Admin/audit");
    });

</script>



        </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>
    <footer class="container">
        <p>© Company 2012 Simple Tools - Member Role  Management&nbsp&nbsp&nbsp<span class="muted">Version: 1.7 from 2016/04/26 21:54:18</span></p>
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
    {"appName":"Chrome","requestId":"daf3dcc1fbb44e6f90f317c4ba8df184"}
</script>
<script type="text/javascript" src="http://localhost:12274/42b2f3012486436e8947fd10d6cd3e2b/browserLink" async="async"></script>
<!-- End Browser Link -->

</body>
</html>
