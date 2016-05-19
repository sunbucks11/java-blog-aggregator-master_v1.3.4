

<!-- 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>Fields - Role &amp; Member</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

   
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
   
  -->  
  
<body data-spy="scroll" data-target=".subnav" data-offset="50">
   
<div class="wrapper">
 <div class="container">
            


<h2>Fields</h2>
<p style="margin-top:7px">
    This area provides the ability to create <u><b>member profile fields</b></u> which will keep additional information about a member. Any field can be included to sign up form. The fields can be grouped as well. To change the order of a field just click on a table row and drag & drop the row to specific position. To change a group order, please click on "Edit Group" button and drag & drop the group row to specific position. You can use these fields during sign up process or to fill that after the sign up.
    <div style="float:right"><span style="color:red;font-size:14px">&nbsp;<b>*</b></span> - Required field<br/>&nbsp;<br/></div>    
</p><br/><br/>
<div id="general-message"></div>

<div id="member-profile-fields">

          <div id="tab-group-1">
                <h3>Personal 
<span class="label label-success" style="margin-right:7px;vertical-align:top;font-size:12px">Active</span>                                    </h3>
                <div class="btn btn-default group-remove btn-xs" data-group-id="1" data-group-name="Personal"><i class="glyphicon glyphicon-minus"></i>&nbsp;Remove Group</div>  
                <div class="btn btn-default group-properties btn-xs" data-group-id="1"><i class="glyphicon glyphicon-zoom-in"></i>&nbsp;Edit Group</div>
                <div class="btn btn-default group-add btn-xs"><i class="glyphicon glyphicon-plus"></i>&nbsp;Add Group</div>

                <div style="float:right">
                    <div class="btn btn-default btn-danger btn-xs remove-field" data-group-id="1"><i class="glyphicon glyphicon-minus icon-white"></i>Remove Field(s)</div>
                    <div class="btn btn-default btn-success btn-xs add-field" data-group-id="1"><i class="glyphicon glyphicon-plus  icon-white"></i>Add Field</div>
                </div> 
            
               <div style="margin-top:10px;">
               <table class="table table-striped table-bordered table-condensed canSort" style="width:100%" id="table-1" data-group-id="1">
               <thead>
               <tr>
                    <td style="width:2%;text-align:center"><input type="checkbox" class="field-group-select-all-fields field-group-select" id="field-group-select-all-fields-1" data-table-id="1"/></td>
                    <td style="width:2%;text-align:center"><b>Type</b></td>
                    <td style="width:15%"><b>Name</b></td>
                    <td style="width:2%;text-align:center"><b>Active</b></td>
                    <td style="width:2%;text-align:center"><b>SignUp</b></td>
                    <td style="width:2%;text-align:center"><b>Admin</b></td>
                    <td style="width:20%"><b>Comment</b></td>
                    <td style="width:15%"><b>Select Text</b></td>
                    <td style="width:1%"><b>Order</b></td>
                </tr>
                </thead>
                <tbody>
                   <tr id="row-63">
                     <td style="text-align:center"><input  id="field-select-63" class="field-group-select-1 field-group-item" data-field-id="63" type="checkbox" title="63" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="63" data-group-id="1" data-tab-index="1">First name</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="63" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="63" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="63" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">First name as in passport</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-64">
                     <td style="text-align:center"><input  id="field-select-64" class="field-group-select-1 field-group-item" data-field-id="64" type="checkbox" title="64" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="64" data-group-id="1" data-tab-index="1">Family name</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="64" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="64" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="64" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Family name  as in passport</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-66">
                     <td style="text-align:center"><input  id="field-select-66" class="field-group-select-1 field-group-item" data-field-id="66" type="checkbox" title="66" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/combo-box.png" title="ComboBox" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="66" data-group-id="1" data-tab-index="1">Gender</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="66" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="66" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="66" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Please select your gender</div></td>
                     <td><div class="expander" style="display:inline-block">Please select your option</div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-67">
                     <td style="text-align:center"><input  id="field-select-67" class="field-group-select-1 field-group-item" data-field-id="67" type="checkbox" title="67" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/combo-box.png" title="ComboBox" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="67" data-group-id="1" data-tab-index="1">Country</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="67" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="67" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="67" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Select your country</div></td>
                     <td><div class="expander" style="display:inline-block">Please select your option</div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-73">
                     <td style="text-align:center"><input  id="field-select-73" class="field-group-select-1 field-group-item" data-field-id="73" type="checkbox" title="73" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="73" data-group-id="1" data-tab-index="1">District</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="73" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="73" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="73" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-68">
                     <td style="text-align:center"><input  id="field-select-68" class="field-group-select-1 field-group-item" data-field-id="68" type="checkbox" title="68" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="68" data-group-id="1" data-tab-index="1">City</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="68" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="68" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="68" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-69">
                     <td style="text-align:center"><input  id="field-select-69" class="field-group-select-1 field-group-item" data-field-id="69" type="checkbox" title="69" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="69" data-group-id="1" data-tab-index="1">Nationality</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="69" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="69" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="69" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-65">
                     <td style="text-align:center"><input  id="field-select-65" class="field-group-select-1 field-group-item" data-field-id="65" type="checkbox" title="65" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="65" data-group-id="1" data-tab-index="1">Birth Date</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="65" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="65" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="65" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Please use the following format dd.mm.yyyy</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-70">
                     <td style="text-align:center"><input  id="field-select-70" class="field-group-select-1 field-group-item" data-field-id="70" type="checkbox" title="70" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="70" data-group-id="1" data-tab-index="1">Phone number</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="70" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="70" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="70" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-71">
                     <td style="text-align:center"><input  id="field-select-71" class="field-group-select-1 field-group-item" data-field-id="71" type="checkbox" title="71" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="71" data-group-id="1" data-tab-index="1">Passport number</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="71" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="71" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="71" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-77">
                     <td style="text-align:center"><input  id="field-select-77" class="field-group-select-1 field-group-item" data-field-id="77" type="checkbox" title="77" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="77" data-group-id="1" data-tab-index="1">Emergency Contact Name</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="77" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="77" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="77" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Emergency Contact Name</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-78">
                     <td style="text-align:center"><input  id="field-select-78" class="field-group-select-1 field-group-item" data-field-id="78" type="checkbox" title="78" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="78" data-group-id="1" data-tab-index="1">Emergency Phone Number</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="78" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="78" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="78" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Emergency Phone Number</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-79">
                     <td style="text-align:center"><input  id="field-select-79" class="field-group-select-1 field-group-item" data-field-id="79" type="checkbox" title="79" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield-multi-line.png" title="StringMultiline" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="79" data-group-id="1" data-tab-index="1">Additional information</a>
                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="79" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="79" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="79" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                <tr class="hidden"><td colspan="7"></td></tr>
                </tbody>
               </table><br/>
               </div>
         </div>
          <div id="tab-group-2">
                <h3>Payments 
<span class="label label-success" style="margin-right:7px;vertical-align:top;font-size:12px">Active</span>                                    </h3>
                <div class="btn btn-default group-remove btn-xs" data-group-id="2" data-group-name="Payments"><i class="glyphicon glyphicon-minus"></i>&nbsp;Remove Group</div>  
                <div class="btn btn-default group-properties btn-xs" data-group-id="2"><i class="glyphicon glyphicon-zoom-in"></i>&nbsp;Edit Group</div>
                <div class="btn btn-default group-add btn-xs"><i class="glyphicon glyphicon-plus"></i>&nbsp;Add Group</div>

                <div style="float:right">
                    <div class="btn btn-default btn-danger btn-xs remove-field" data-group-id="2"><i class="glyphicon glyphicon-minus icon-white"></i>Remove Field(s)</div>
                    <div class="btn btn-default btn-success btn-xs add-field" data-group-id="2"><i class="glyphicon glyphicon-plus  icon-white"></i>Add Field</div>
                </div> 
            
               <div style="margin-top:10px;">
               <table class="table table-striped table-bordered table-condensed canSort" style="width:100%" id="table-2" data-group-id="2">
               <thead>
               <tr>
                    <td style="width:2%;text-align:center"><input type="checkbox" class="field-group-select-all-fields field-group-select" id="field-group-select-all-fields-2" data-table-id="2"/></td>
                    <td style="width:2%;text-align:center"><b>Type</b></td>
                    <td style="width:15%"><b>Name</b></td>
                    <td style="width:2%;text-align:center"><b>Active</b></td>
                    <td style="width:2%;text-align:center"><b>SignUp</b></td>
                    <td style="width:2%;text-align:center"><b>Admin</b></td>
                    <td style="width:20%"><b>Comment</b></td>
                    <td style="width:15%"><b>Select Text</b></td>
                    <td style="width:1%"><b>Order</b></td>
                </tr>
                </thead>
                <tbody>
                   <tr id="row-85">
                     <td style="text-align:center"><input  id="field-select-85" class="field-group-select-2 field-group-item" data-field-id="85" type="checkbox" title="85" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="85" data-group-id="2" data-tab-index="1">Credit Card Number</a>
                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="85" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="85" class="set-field-for-signup switch" /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="85" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Your Credit Card Number</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-86">
                     <td style="text-align:center"><input  id="field-select-86" class="field-group-select-2 field-group-item" data-field-id="86" type="checkbox" title="86" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="86" data-group-id="2" data-tab-index="1">Bank Account</a>
                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="86" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="86" class="set-field-for-signup switch" /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="86" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Your bank account number</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-88">
                     <td style="text-align:center"><input  id="field-select-88" class="field-group-select-2 field-group-item" data-field-id="88" type="checkbox" title="88" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/list-multi.png" title="MultiSelectList" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="88" data-group-id="2" data-tab-index="1">Which bank do you prefer ?</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="88" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="88" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="88" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Please select one or more values below</div></td>
                     <td><div class="expander" style="display:inline-block">[No selected items]</div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-90">
                     <td style="text-align:center"><input  id="field-select-90" class="field-group-select-2 field-group-item" data-field-id="90" type="checkbox" title="90" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/radiobutton-group.png" title="RadioBoxGroup" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="90" data-group-id="2" data-tab-index="1">Payment Period</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="90" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="90" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="90" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Please select your payment period</div></td>
                     <td><div class="expander" style="display:inline-block">Please select your payment period</div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                   <tr id="row-89">
                     <td style="text-align:center"><input  id="field-select-89" class="field-group-select-2 field-group-item" data-field-id="89" type="checkbox" title="89" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/radiobutton-group.png" title="RadioBoxGroup" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="89" data-group-id="2" data-tab-index="1">Payment Type</a>
<span style="color:red;font-size:14px">&nbsp;<b>*</b></span>                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="89" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="89" class="set-field-for-signup switch" checked='checked'/></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="89" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Please select your payment type</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                <tr class="hidden"><td colspan="7"></td></tr>
                </tbody>
               </table><br/>
               </div>
         </div>
          <div id="tab-group-3">
                <h3>Geo Information 
<span class="label" style="margin-right:2px;vertical-align:top;font-size:12px">Not Active</span>                                    </h3>
                <div class="btn btn-default group-remove btn-xs" data-group-id="3" data-group-name="Geo Information"><i class="glyphicon glyphicon-minus"></i>&nbsp;Remove Group</div>  
                <div class="btn btn-default group-properties btn-xs" data-group-id="3"><i class="glyphicon glyphicon-zoom-in"></i>&nbsp;Edit Group</div>
                <div class="btn btn-default group-add btn-xs"><i class="glyphicon glyphicon-plus"></i>&nbsp;Add Group</div>

                <div style="float:right">
                    <div class="btn btn-default btn-danger btn-xs remove-field" data-group-id="3"><i class="glyphicon glyphicon-minus icon-white"></i>Remove Field(s)</div>
                    <div class="btn btn-default btn-success btn-xs add-field" data-group-id="3"><i class="glyphicon glyphicon-plus  icon-white"></i>Add Field</div>
                </div> 
            
               <div style="margin-top:10px;">
               <table class="table table-striped table-bordered table-condensed canSort" style="width:100%" id="table-3" data-group-id="3">
               <thead>
               <tr>
                    <td style="width:2%;text-align:center"><input type="checkbox" class="field-group-select-all-fields field-group-select" id="field-group-select-all-fields-3" data-table-id="3"/></td>
                    <td style="width:2%;text-align:center"><b>Type</b></td>
                    <td style="width:15%"><b>Name</b></td>
                    <td style="width:2%;text-align:center"><b>Active</b></td>
                    <td style="width:2%;text-align:center"><b>SignUp</b></td>
                    <td style="width:2%;text-align:center"><b>Admin</b></td>
                    <td style="width:20%"><b>Comment</b></td>
                    <td style="width:15%"><b>Select Text</b></td>
                    <td style="width:1%"><b>Order</b></td>
                </tr>
                </thead>
                <tbody>
                   <tr id="row-87">
                     <td style="text-align:center"><input  id="field-select-87" class="field-group-select-3 field-group-item" data-field-id="87" type="checkbox" title="87" /></td>
                     <td style="text-align:center">                        

                         <img src="/Content/Images/textfield.png" title="String" />
                     </td>
                     <td><a href="#" class="edit-field" data-field-id="87" data-group-id="3" data-tab-index="1">Geo Location</a>
                                                               </td>                 
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="87" class="set-field-isactive switch" checked='checked' /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="87" class="set-field-for-signup switch" /></td>
                     <td style="text-align:center"><input style="margin-top:-3px" type="checkbox" data-field-id="87" class="set-field-for-adminuse switch" /></td>
                     <td><div class="expander" style="display:inline-block">Your Geo Location</div></td>
                     <td><div class="expander" style="display:inline-block"></div></td>
                     <td style="text-align:center"><i class="glyphicon glyphicon-resize-vertical handle" style="cursor:pointer"></i></td>
                 </tr>
                <tr class="hidden"><td colspan="7"></td></tr>
                </tbody>
               </table><br/>
               </div>
         </div>



<script type="text/javascript">
    
    $('.switch').slickswitch();

    $("input.set-field-isactive").on("change", function (e) {
        var id = $(this).attr("data-field-id");
        var isChecked = $(this).is(":checked");
   
        var _this = $(this);

        $.ajax({
            type: "POST",
            url: "/Admin/Fields/SetIsActive",
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({ Flag: isChecked, FieldID: id}),
            cache: false,
            success: function (data) {
                
            },
            error: function (xhr, textStatus, errorThrown) {
                
                App.DialogError(xhr, textStatus, errorThrown);
            }
        });

    });

    $("input.set-field-for-signup").on("change", function (e) {
        var id = $(this).attr("data-field-id");
        var isChecked = $(this).is(":checked");

        var _this = $(this);
        
        $.ajax({
            type: "POST",
            url: "/Admin/Fields/SetShowInSignUp",
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({ Flag: isChecked, FieldID: id }),
            cache: false,
            success: function (data) {
               
            },
            error: function (xhr, textStatus, errorThrown) {
                
                App.DialogError(xhr, textStatus, errorThrown);
            }
        });
        
    });

    $("input.set-field-for-adminuse").on("change", function (e) {
        var id = $(this).attr("data-field-id");
        var isChecked = $(this).is(":checked");

        var _this = $(this);

        $.ajax({
            type: "POST",
            url: "/Admin/Fields/SetAdminUseOnly",
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({ Flag: isChecked, FieldID: id }),
            cache: false,
            success: function (data) {
                 
            },
            error: function (xhr, textStatus, errorThrown) {
                
                App.DialogError(xhr, textStatus, errorThrown);
            }
        });
    }); 

</script>
</div>

<script type="text/javascript">
    App.InitExpander(20);
    $(document).ready(function () {
        App.FieldsManagement = new FieldsManagement();
        App.FieldsManagement.initManagement("/Admin/Fields");
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
    {"appName":"Chrome","requestId":"3378cba792c94524a96b21bf1a9e5a92"}
</script>
<script type="text/javascript" src="http://localhost:12274/42b2f3012486436e8947fd10d6cd3e2b/browserLink" async="async"></script>
<!-- End Browser Link -->

</body>
</html>
