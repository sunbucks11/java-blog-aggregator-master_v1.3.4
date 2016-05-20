


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>Settings - Role &amp; Member</title>
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
                                <li ><a href="/Admin/Audit"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="margin-right:10px;"></span> Audit</a></li>
                                <li class="divider"></li>
                                <li ><a href="/Admin/Tools"><span class="glyphicon glyphicon-briefcase" aria-hidden="true" style="margin-right:10px;"></span> Tools</a></li>
                                <li class="active"><a href="/Admin/Settings"><span class="glyphicon glyphicon-cog" aria-hidden="true" style="margin-right:10px;"></span> Settings</a></li>
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
            



<h2>Settings</h2>
<p>
    <br/>This area provides a set of options which help to adjust the application to your needs. All available options are described on the <a href="/Admin/Help">Help</a> page. You can find some useful stuff on <a href="/Admin/FAQ">FAQ</a> page as well.
</p><br/>
<div id="general-message"></div>
<div class="tabbable">
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#1" data-toggle="tab">General</a>
    </li>
    <li><a href="#2" data-toggle="tab">User Interface</a></li>
    <li><a href="#3" data-toggle="tab">Outgoing Mail Server</a></li>
    <li><a href="#4" data-toggle="tab">Registration</a></li>
    <li><a href="#5" data-toggle="tab">API</a></li>
    <li><a href="#6" data-toggle="tab">Themes</a></li>
    <li><a href="#7" data-toggle="tab">Languages</a></li>
    <li><a href="#8" data-toggle="tab">Rules</a></li>
    <li><a href="#9" data-toggle="tab">Social Networks</a></li>
    <li><a href="#10" data-toggle="tab">LDAP</a></li>
</ul>
	<form class="form-horizontal" method="post" id="settings-form" style="width:100%">
		<div class="tab-content">
			<div class="tab-pane fade active in" id="1">
				<legend>General</legend>



<div class="row">
   <div class="col-md-4">
        <div class="form-group">
	        <label class="control-label" for="general-admin-email">Admin Email</label>
		    <input type="text" class="input-xlarge app-settings form-control" maxlength="64" id="general-admin-email" name="general-admin-email" value="admin@demo.com"/>
		    <p class="muted">The email address of site admin</p>
        </div>

        <div class="form-group">
	        <label class="control-label" for="general-app-path">Application Path</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="general-app-path" name="general-app-path" value="localhost" />
		    <p class="muted">Application's absolute path</p>
        </div>

        <div class="form-group">
	        <label class="control-label" for="general-domain-name">Domain Name</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="general-domain-name" name="general-domain-name" value="localhost" />
		    <p class="muted">The name of domain</p>
        </div>

        <div class="form-group">
	        <label class="control-label" for="general-cookie-name">Auth Cookie Name</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="64" id="general-cookie-name" name="general-cookie-name" value="myApplicationCookie" />
		    <p class="muted">Name of cookie which will use for the authentication</p>
        </div>

        <div class="form-group">
	        <label class="control-label" for="general-audit-enabled">Audit</label>
		    <label class="checkbox muted">
                <input type="checkbox" class="input-xlarge app-settings" id="general-audit-enabled" name="general-audit-enabled" checked='checked' />
		        <p class="muted">Enable audit functionality</p>
            </label>       
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <label class="control-label" for="general-app-secret-admin-url">Secret Admin URL</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="general-app-secret-admin-url" name="general-app-secret-admin-url" value="" />
            <p class="muted">Admin UI virtual path</p>
        </div>
        <div class="form-group">
            <label class="control-label" for="general-audit-enabled">Maintenance Time URL</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="general-app-maintenance-url" name="general-app-maintenance-url" value="Offline" />
            <p class="muted">Local or external path of maintenance page</p>
        </div>
        <div class="form-group">
            <label class="control-label" for="general-audit-enabled">Maintenance Time</label>
            <label class="checkbox muted">
                <input type="checkbox" class="input-xlarge app-settings" id="general-app-maintenance-enabled" name="general-app-maintenance-enabled"  />
                <p class="muted">Switch to the maintenance mode</p>
            </label>
            <p class="muted">&nbsp;</p>
        </div>
    </div>
</div>
                 
			</div>
            <div class="tab-pane fade" id="2">
				<legend>User Interface</legend>



<div class="row">
    <div class="col-md-4">
        <div class="form-group">
	        <label class="control-label" for="ui-app-name">Application Name</label>
	        <input type="text" class="input-xlarge app-settings form-control" maxlength="64" id="ui-app-name" name="ui-app-name"  value="Role &amp; Member"/>
	        <p class="muted">The name of the application</p>
        </div>

        <div class="form-group">
	        <label class="control-label" for="ui-paging-size">Default Paging Size</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="3" id="ui-paging-size" name="ui-paging-size" value="40" />
	        <p class="muted">The default page size for all grids</p>
        </div>

        <div class="form-group">
            <label class="control-label" for="ui-app-fluid">Fluid</label>
            <label class="checkbox muted">
                <input type="checkbox" class="input-xlarge app-settings" id="ui-app-fluid" name="ui-app-fluid"  />
            <p class="muted">Enable fluid behavior for admin UI</p>
            </label>       
        </div>
    </div>
</div>





				        
			</div>
            <div class="tab-pane fade" id="3">
				<legend>Outgoing Mail Server</legend>



<div class="row">
    <div class="col-md-4">
        <div class="form-group">
            <label class="control-label" for="mailserver-smtp-host">SMTP Host</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="64" id="mailserver-smtp-host" name="mailserver-smtp-host" value="mail.server.com" />
            <p class="muted">SMTP server host used (e.g. smtp.domainname.com)</p>
        </div>
        <div class="form-group">
            <label class="control-label" for="mailserver-smtp-port">SMTP Port</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="3" id="mailserver-smtp-port" name="mailserver-smtp-port" value="25" />
            <p class="muted">The port for SMTP server used for sending emails</p>
        </div>
        <div class="form-group">
            <label class="control-label" for="mailserver-smtp-ssl-enabled">SSL</label>
            <label class="checkbox muted">
                <input type="checkbox" class="input-xlarge app-settings" id="mailserver-smtp-ssl-enabled" name="mailserver-smtp-ssl-enabled" checked />
                Enable SSL connection between application and mail server.
            </label>
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <label class="control-label" for="mailserver-smtp-user">SMTP User Name</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="64" id="mailserver-smtp-user" name="mailserver-smtp-user" value="Admin" />
            <p class="muted">The user name for SMTP account used for sending emails</p>
        </div>
        <div class="form-group">
            <label class="control-label" for="mailserver-smtp-email">SMTP User Email</label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="64" id="mailserver-smtp-email" name="mailserver-smtp-email" value="user@mail.server.com" />
            <p class="muted">The user emal for SMTP account used for sending emails</p>
        </div>

        <div class="form-group">
            <label class="control-label" for="mailserver-smtp-pass">SMTP Password </label>
            <input type="password" class="input-xlarge app-settings form-control" maxlength="64" id="mailserver-smtp-pass" name="mailserver-smtp-pass" value="mailserver" />
            <p class="muted">The password for the SMTP account used for sending emails</p>
        </div>
    </div>
</div>
			</div>				
            <div class="tab-pane fade" id="4">
				<legend>Registration</legend>


<div class="row">
   <div class="col-md-4">
        <div class="form-group">
	        <label class="control-label" for="registration-self-registration">Self-Registration</label>
		    <label class="checkbox muted">
            <input type="checkbox" class="input-xlarge app-settings" id="registration-self-registration" name="registration-self-registration" checked />
		    Enables self-registration functionality.
            </label>       
        </div>

        <div class="form-group">
	        <label class="control-label" for="registration-self-activation">Self-Activation</label>
		    <label class="checkbox muted">
            <input type="checkbox" class="input-xlarge app-settings" id="registration-self-activation" name="registration-self-activation" checked />
		    Enables self-activation functionality.
            </label>       
        </div>

        <div class="form-group">
	        <label class="control-label" for="registration-reset-password">Reset Password</label>
		    <label class="checkbox muted">
            <input type="checkbox" class="input-xlarge app-settings" id="registration-reset-password" name="registration-reset-password" checked />
		    Enables reset password functionality.
            </label>       
        </div>
        <div class="form-group">
	        <label class="control-label" for="registration-member-registration-to-roles">Self-Registration Roles</label>
            <input type="text" class="input-xlarge app-settings form-control" " maxlength=" 512 " id=" registration-member-registration-to-roles " name=" registration-member-registration-to-roles " value=" Self Registered; Not Activated " />
		    <p class="muted">Add member to roles after self-registration</p>
        </div>

        <div class="form-group">
	        <label class="control-label" for="registration-member-activation-to-roles">Self-Acivation Roles</label>
		    <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="registration-member-activation-to-roles" name="registration-member-activation-to-roles" value="Self Registered; Self Activated; Viewer" />
		    <p class="muted">Add member to roles after self-activation</p>
        </div>       
    </div>
    <div class="col-md-4">
        <div class="form-group">
	    <label class="control-label" for="registration-mail-domain-restriction-list">Mail Domains</label>
            <textarea type="text" style="height:190px" class="input-xlarge app-settings form-control" " maxlength=" 512 " id=" registration-mail-domain-restriction-list " name=" registration-mail-domain-restriction-list "></textarea>
		<p class="muted">Restricted mail domain list.</br> Use "," - comma as separator</p>
	    <input type="radio" class="input-xlarge app-settings" name="registration-mail-domain-restriction" checked value="1"> Allow All (Excluding from the list)<br/>
        <input type="radio" class="input-xlarge app-settings" name="registration-mail-domain-restriction"  value="2"> Deny All (Excluding from the list)
        </div>
    </div>
</div>
 
			</div>               
            <div class="tab-pane fade" id="5">
				<legend>API</legend>



<div class="row">
    <div class="col-md-4">
        <div class="form-group">
	        <label class="control-label" for="api-enabled">API Enabled:</label>
	        <label class="muted checkbox">
            <input type="checkbox" class="input-xlarge app-settings" id="api-enabled" name="api-enabled" checked />
	        Enables API support.
            </label>
        </div>
        <div class="form-group">
           <label class="control-label" for="api-secret-url">Secret URL</label>
           <input type="text" class="input-xlarge app-settings form-control"  maxlength="512" id="api-secret-url" name="api-secret-url" value=""/>
           <p class="muted">The URL which will be used for API method execution</p>
        </div>
    </div>
</div>
			</div>
            <div class="tab-pane fade" id="6">
				<legend>Themes</legend>



<div class="row">
    <div class="col-md-4">
        <div class="form-group">
            <label for="themes-app-current-name">Name</label>
                <select class="input-xlarge app-settings form-control" id="themes-app-current-name" name="themes-app-current-name" >
                  <option value="cerulean">Cerulean - A calm, blue sky</option>
                  <option value="cosmo">Cosmo - An ode to Metro.</option>
                  <option value="cyborg">Cyborg - Jet black and electric blue</option>
                  <option value="darkly">Darkly - Jet black and electric blue</option>                  
                  <option value="bootstrap">Bootstrap - classic Bootstrap</option>
                  <option value="flatly">Flatly - Flat and modern </option>
                  <option value="journal">Journal - Crisp like a new sheet of paper</option>
                  <option value="lumen">Lumen - Ligth and shadow</option>
                  <option value="paper">Paper - Material is the metaphor</option>                  
                  <option value="readable">Readable - Optimized for legibility</option>
                  <option value="sandstone">Sandstone - A touch of warmth</option>
                  <option value="simplex">Simplex - Mini and minimalist</option>
                  <option value="slate">Slate - Shades of gunmetal gray</option>
                  <option value="spacelab">Spacelab - Silvery and sleek</option>
                  <option value="superhero">Superhero - Batman meets... Aquaman</option>
                  <option value="united">United - Ubuntu orange and unique font</option>
                  <option value="yeti">Yeti - A friendly foundation</option>
                </select>
                <p class="muted">Let's colorize the world :)</p>
        </div><br/>
        <div class="form-group">
            <label for="themes-app-current-name">Example</label>
            <img id="theme-example" with="540px" height="280px" src="/Content/themes/bootstrap/thumbnail.png?v=635993103062183512" />
            <br /><br />
        </div>
    </div>

</div>

<script>
    $("#themes-app-current-name").val("bootstrap")
    $("#themes-app-current-name").bind("change", function (e) {
        $("#theme-example").attr("src", "/Content/themes/" + $(this).val() + "/thumbnail.png");
    });
</script>

			</div>
            <div class="tab-pane fade" id="7">
				<legend>Languages</legend>



<div class="row">
    <div class="col-md-4">
        <div class="form-group">
            <label class="control-label" for="language-public-default">Public UI language</label>



<select class="input-xlarge app-settings app-languages form-control" id="language-public-default" name="language-public-default" >
    <option value="ENG" selected  >ENG - English</option>
    <option value="RUS"  >RUS - Russian</option>
</select>
                 
            <p class="muted">Default public UI language for Sign In, Sign Out forms</p>
        </div>
         <div class="form-group">
	        <label class="control-label" for="">Reload label files</label>
	        <div class="btn btn-default reload-labels btn-xs" data-url="/Admin/Settings/ReloadLabels">Reload</div>
	        <span class="muted">Click to reload all label files and load new files if exist</span>
         </div>
    </div>
</div>
 <script type="text/javascript">
     $("#language-public-default").val("ENG")
</script>
			</div>
            <div class="tab-pane fade" id="8">
				<legend>Rules</legend>


<div class="row">
   <div class="col-md-4"> 
         <div class="form-group">
	        <label class="control-label" for="rules-redirect-after-login">Redirect After Sign In</label>
		    <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="rules-redirect-after-login" name="rules-redirect-after-login" value="" />
		    <p class="muted">Redirect to the url after sign in if no back link</p>
        </div>    
         <div class="form-group">
	        <label class="control-label" for="rules-redirect-after-logout">Redirect After Sign Out</label>
             <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="rules-redirect-after-logout" name="rules-redirect-after-logout" value="" />
		    <p class="muted">Redirect to the url after sign out if no back link</p>
        </div>    
         <div class="form-group">
	        <label class="control-label" for="rules-redirect-after-sign-up">Redirect After Sing Up</label>
             <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="rules-redirect-after-sign-up" name="rules-redirect-after-logout" value="" />
		    <p class="muted">Redirect to the url after success sign up</p>
        </div>    
        <div class="form-group">
	        <label class="control-label" for="rules-password-failed-roles">Add member to role</label>
            <input type="text" class="input-xlarge app-settings form-control" style="width:100px" maxlength="512" id="rules-password-failed-roles" name="" value="Blocked" />&nbsp;if password was failed <input type="text" class="input-xlarge app-settings" style="width:20px"  maxlength="2" id="rules-password-failed-attempts" name="" value="7"/> times.
            <p class="muted">Role list (Blocked; Blocked > 5 for instance)</p>
        </div>       
	    <div class="form-group">
	        <label class="control-label" for="rules-password-failed-attempts-redirect">And redirect to </label>
            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="rules-password-failed-attempts-redirect" name="rules-password-failed-attempts-redirect" " value="  " />
            <p class="muted">Redirect to if account was blocked</p>
        </div>  
    </div>
    <div class="col-md-4">
      <div class="form-group">
	        <label class="control-label" for="rules-member-mail-bcc">Blind Carbon Copy (Bcc)</label>
          <textarea type="text" style="height:150px" class="input-xlarge app-settings form-control" maxlength="512" id="rules-member-mail-bcc" name="rules-member-mail-bcc"></textarea>
		    <span class="muted"><br/>This is a copy of an email message<br/>  sent to a recipient whose email address<br/> does not appear in the message.<br/> Use "," - comma as separator</span><br/>
	        <input type="checkbox" class="input-xlarge app-settings" id="rules-member-mail-bcc-registration" name="rules-member-mail-bcc-registration"  />&nbsp;Registration<br/>      
            <input type="checkbox" class="input-xlarge app-settings" id="rules-member-mail-bcc-activation" name="rules-member-mail-bcc-activation"  />&nbsp;Activation<br/>      
            <input type="checkbox" class="input-xlarge app-settings" id="rules-member-mail-bcc-passworchange" name="rules-member-mail-bcc-passworchange"  />&nbsp;Password Change<br/>     
        </div>    
    </div>
</div>
 
			</div>
            <div class="tab-pane fade" id="9">
				<legend>Social Networks</legend>



<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label class="control-label" for="social-twitter-enabled">Twitter&nbsp;&nbsp;<img src="/content/images/social/24x24/twitter.png" /></label>

                <label class="checkbox muted">
                    <input type="checkbox" class="input-xlarge app-settings" id="social-twitter-enabled" name="social-twitter-enabled" checked='checked' />
                    <p class="muted">Enable login via Twitter </p>
                </label>
                
               <div class="row">
                   <div class="col-md-6">
                       <div class="row">
                           <div class="col-md-8">
                               <input type="text" class="input-xlarge app-settings input-settings-box form-control form-control" maxlength="64" id="social-twitter-consumer-key" name="social-twitter-consumer-key" value="your app Consumer key" />
                               <p class="muted"> </p>
                           </div>
                           <div class="col-md-4">
                               Consumer key
                           </div>
                       </div> 
                       <div class="row">
                           <div class="col-md-8">
                               <input type="text" class="input-xlarge app-settings input-settings-box form-control form-control" maxlength="64" id="social-twitter-consumer-secret" name="social-twitter-consumer-secret" value="your App Consumer Secret" />
                               <p class="muted"> </p>
                           </div>
                           <div class="col-md-4">
                               Consumer secret
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-8">
                               <input type="text" class="input-xlarge app-settings input-settings-box form-control form-control" maxlength="64" id="social-twitter-roles" name="social-twitter-roles" value="Twitter; A-SocialSignIn" />
                               <p class="muted"> </p>
                           </div>
                           <div class="col-md-4">
                               Add member to roles
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-5">
                               <p class="muted">You must first <a href="https://dev.twitter.com/apps/new">setup a Twitter App.</a></p>
                           </div>
                        </div>
                   </div>
                   <div class="col-md-4">
                       You need to register your application with Twitter. That means you should have your production URL ready before you think to start your development. When you finished with registration, you will receive consumer key and consumer secret. These unique credentials will help your app to interact with Twitter. No big deal. You can visit your all registered applications on <a href="http://twitter.com/oauth">http://twitter.com/oauth</a>. And to register for new app you need to visit <a href="http://twitter.com/apps/new">http://twitter.com/apps/new</a>.  
                   </div>
                </div>

            <label class="control-label" for="social-facebook-enabled">
                Facebook&nbsp;&nbsp;<img src="/content/images/social/24x24/facebook.png" />
            </label>
            <label class="checkbox muted">
                <input type="checkbox" class="input-xlarge app-settings" id="social-facebook-enabled" name="social-facebook-enabled" checked='checked' />
                <p class="muted">Enable login via Facebook </p>
            </label>

            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-8">
                            <input type="text" class="input-xlarge app-settings input-settings-box form-control form-control" maxlength="64" id="social-facebook-app-id" name="social-facebook-app-id" value="your App ID" />
                            <p class="muted"> </p>
                        </div>
                        <div class="col-md-4">
                            App ID
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <input type="text" class="input-xlarge app-settings input-settings-box form-control form-control" maxlength="64" id="social-facebook-app-secret" name="social-facebook-app-secret" value="your App Secret" />
                            <p class="muted"> </p>
                        </div>
                        <div class="col-md-4">
                            App Secret
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <input type="text" class="input-xlarge app-settings input-settings-box form-control form-control" maxlength="64" id="social-facebook-roles" name="social-facebook-roles" value="Facebook; A-SocialSignIn" />
                            <p class="muted"> </p>
                        </div>
                        <div class="col-md-4">
                            Add member to roles
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <p class="muted">You must <a href="https://developers.facebook.com/apps">first setup a Facebook App.</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    It is recommended that users be able to authenticate with Facebook when using Socialize so as to maximize the exposure and promotion of your app.
                    First step for Facebook is retrieve the App ID and App Secret  (it is based on oAuth 2.0), so register you application on <a href="https://developers.facebook.com/apps">https://developers.facebook.com/apps</a>.
                </div>
            </div>
        </div>
    </div>
</div>





<legend>OpenID Networks</legend>
<div class="row">
    <div class="col-md-4">
    <div class="form-group">
     <label class="control-label" for="social-goole-enabled">Google&nbsp;&nbsp;<img src="/content/images/social/24x24/google.png"/></label>
        <div class="controls">	
        <label class="checkbox muted">
        <input type="checkbox" class="input-xlarge app-settings" id="social-goole-enabled" name="social-goole-enabled" checked='checked'/>
        <p class="muted">Enable login via Google</p>
        </label>               
    </div>
    <div class="controls">
		<input type="text" class="input-xlarge app-settings input-settings-box form-control " maxlength="64" id="social-google-roles" name="social-google-roles"  value="Google; A-SocialSignIn"/>
		<p class="muted"></p>
	</div>

        <label class="control-label" for="social-yahoo-enabled">Yahoo&nbsp;&nbsp;<img src="/content/images/social/24x24/yahoo.png"/></label>
        <div class="controls">	
        <label class="checkbox muted">
        <input type="checkbox" class="input-xlarge app-settings" id="social-yahoo-enabled" name="social-yahoo-enabled" checked='checked'/>
        <p class="muted">Enable login via Yahoo </p>
        </label>       
    </div>
        <div class="controls">
		<input type="text" class="input-xlarge app-settings input-settings-box form-control" maxlength="64" id="social-yahoo-roles" name="social-yahoo-roles"  value="Yahoo; A-SocialSignIn"/>
		<p class="muted"></p>
	</div>

        <label class="control-label" for="social-livejournal-enabled">Live Journal&nbsp;&nbsp;<img src="/content/images/social/24x24/livejournal.png"/></label>
        <div class="controls">	
        <label class="checkbox muted">
        <input type="checkbox" class="input-xlarge app-settings" id="social-livejournal-enabled" name="social-livejournal-enabled" checked='checked'/>
        <p class="muted">Enable login via Live Journal</p>
        </label>       
    </div>
        <div class="controls">
		<input type="text" class="input-xlarge app-settings input-settings-box form-control" maxlength="64" id="social-livejournal-roles" name="social-livejournal-roles"  value="Live Journal; A-SocialSignIn"/>
		<p class="muted"></p>
	</div>
    </div>
    </div>

    <div class="col-md-4">
        <div class="form-group">
            <label class="control-label" for="social-blogger-enabled">Blogger&nbsp;&nbsp;<img src="/content/images/social/24x24/blogger.png" /></label>

                <label class="checkbox muted">
                    <input type="checkbox" class="input-xlarge app-settings" id="social-blogger-enabled" name="social-blogger-enabled" checked='checked' />
                    <p class="muted">Enable login via Live Blogger</p>
                </label>


                <input type="text" class="input-xlarge app-settings input-settings-box form-control" maxlength="64" id="social-blogger-roles" name="social-blogger-roles" value="Blogger; A-SocialSignIn" />
                <p class="muted"></p>



                <label class="control-label" for="social-openid-enabled">OpenID&nbsp;&nbsp;<img src="/content/images/social/24x24/openid.png" /></label>

                <label class="checkbox muted">
                    <input type="checkbox" class="input-xlarge app-settings" id="social-openid-enabled" name="social-openid-enabled" checked='checked' />
                    <p class="muted">Enable login via OpenID</p>
                </label>


                <input type="text" class="input-xlarge app-settings input-settings-box form-control" maxlength="64" id="social-openid-roles" name="social-openid-roles" value="OpenID; A-SocialSignIn" />
                <p class="muted"></p>


                <label class="control-label" for="social-myopenid-enabled">myOpenID&nbsp;&nbsp;<img src="/content/images/social/24x24/myopenid.png" /></label>

                <label class="checkbox muted">
                    <input type="checkbox" class="input-xlarge app-settings" id="social-myopenid-enabled" name="social-myopenid-enabled" checked='checked' />
                    <p class="muted">Enable login via myOpenID</p>
                </label>


                <input type="text" class="input-xlarge app-settings input-settings-box form-control" maxlength="64" id="social-myopenid-roles" name="social-myopenid-roles" value="My OpenID; A-SocialSignIn" />
                <p class="muted"></p>

        </div>
    </div>
</div>


			</div>
            <div class="tab-pane fade" id="10">
				<legend>LDAP</legend>



<div class="row">
    <div class="col-md-5">
        <div class="form-group">
	        <label class="control-label" for="ldap-enabled">LDAP Enabled</label>

	        <label class="muted checkbox">
            <input type="checkbox" class="input-xlarge app-settings" id="ldap-enabled" name="ldap-enabled"  />
	        Using LDAP as primary for a member authentication.
            </label>

            <label class="control-label" for="ldap-use-only">LDAP Use Only</label>

	        <label class="muted checkbox">
            <input type="checkbox" class="input-xlarge app-settings" id="ldap-use-only" name="ldap-use-only"  />
	        Using LDAP authentication only. <b>Please, add LDAP admin user to Admins role before.</b>
            </label>
            
            <label class="control-label" for="ldap-add-role-group">Add group as role</label>

            <label class="muted checkbox">
                <input type="checkbox" class="input-xlarge app-settings" id="ldap-add-role-group" name="ldap-add-role-group" checked />
                Add members groups as role automatically if it doesn't exists.
            </label>

        </div>
    </div>
    <div class="col-md-5">
        <div class="form-group">
            
            
            <label class="control-label" for="ldap-domain">LDAP Domain</label>

            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="ldap-domain" name="ldap-domain" value="domain.com" />
            <p class="muted">LDAP mail domain which will be used for member name</p>

            <label class="control-label" for="ldap-path">LDAP Path</label>

            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="ldap-path" name="ldap-path" value="LDAP://domainname.com/DC=domainname,DC=com" />
            <p class="muted"></p>

            <label class="control-label" for="ldap-add-to-roles">Add Member to Role</label>

            <input type="text" class="input-xlarge app-settings form-control" maxlength="512" id="ldap-add-to-roles" name="ldap-add-to-roles" value="LDAP; Viewer" />
            <p class="muted">Add created member to the roles</p>

        </div>
    </div>
</div>

<p>
    <br />
    When connecting to AD you can use "serverless" binding or you can specify a serverbound to use everytime (server bound). Here's an example of using both:
    <table class="table table-striped table-bordered table-condensed" style="width:55% !important">
        <tr><td><b>Type</b></td><td><b>URL Example</b></td></tr>
        <tr><td>Serverless</td><td>LDAP://dc=domainname,dc=com</td></tr>
        <tr><td>Serverbound</td><td>LDAP://domainControllerName/dc=domainName,dc=com </td></tr>
    </table>
</p>

			</div>
		</div>
        <div class="form-actions" style="padding-top:15px;padding-bottom:15px">
            <button data-loading-text="Saving..." data-complete-text="Changes saved" name="save-settings" class="btn btn-default btn-primary save-settings btn-small">Save changes</button>
        </div>
    </form>    
</div>


<script>
    $(".save-settings").bind("click", function (e) {
        e.preventDefault();

        $(".save-settings").button('loading')

        var setting = [];
        $(".app-settings").each(function (e) {
            var Param = {
                Name: $(this).attr("id"),
                Value: $(this).val()
            };

            if ($(this).attr("type") == "checkbox") {
                Param.Value = $(this).is(':checked')
            } else if ($(this).attr("type") == "radio") {
                if ($(this).is(':checked')) {
                    Param.Value = $(this).val();
                    Param.Name = $(this).attr("Name");
                }
                else
                    Param = null;
            }

            if (Param != null)
                setting.push(Param);
        });

        $.ajax({
            type: "POST",
            url: "/Admin/Settings/SaveSettings",
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(setting),
            cache: false,
            success: function (data) {
                  $(".save-settings").button('reset')


                  if (data.NotifyType == 1) {
                      $("#general-message").html(data.Html)
                      $("body").animate({ scrollTop: 0 }, 'slow');
                  }

                  if (data.Settings != null && data.Settings.length > 0)
                  {
                        for(var i=0; i < data.Settings.length;i++)
                        {
                            var element = data.Settings[i];
                            if(element.Type == "Bool")
                            {
                               if(element.Value == "true")
                                    $("#"+element.Name).attr('checked', true);
                               else
                                    $("#"+element.Name).attr('checked', false);
                            }else  if(element.Type == "RadioInteger")
                            {
                                $('[name='+element.Name+']').prop('checked',false);
                                $('[name="'+element.Name+'"][value=\"'+element.Value+'\"]').prop('checked',true);
                            }
                            else
                            {
                               $("#"+element.Name).val(element.Value);
                            }
                        }
                  }

                  if(data.Message != null && data.Message.length > 0)
                  {
                      $("#general-message").html(data.Message);
                      $("body").animate({ scrollTop: 0 }, 'slow');
                  }
            },
            error: function (xhr, textStatus, errorThrown) {
                App.DialogError(xhr, textStatus, errorThrown);
                $(".save-settings").button('reset')
            }
        });

        return false;
    })
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
    {"appName":"Chrome","requestId":"9af08424f1b644e38f0a2b399fdbd4ee"}
</script>
<script type="text/javascript" src="http://localhost:28977/e307c1b97de24621be7bfd32b9e05a29/browserLink" async="async"></script>
<!-- End Browser Link -->

</body>
</html>
