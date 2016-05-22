<head>

</head>
<body>

    <div class="container body-content">
        


<br/>
 <div style="background-color: #5BDEA6 "  class="jumbotron">
     <h1>Hello, protected website example!</h1>
     <h2 style="color:#B85C5C !important">Java2EE, Spring MVC 4.2.6 and Spring Security 4.1.0 </h2><br />
     <p>This is an example of using admin tool for web site protection. It includes public and protected area.</p>
 </div>
 <div class="page-header">
     <h2>User Management Tool Example<small>&nbsp;An Example of using Admin Tool!</small></h2>
 </div>
 <div class="row">
     <div class="col-md-4">
         <h2>Public</h2>
         <p>This is public area which is not protected. You can navigate this area without authentication.</p>
         <p><br /><a class="btn btn-info" href="/Home/About">View &raquo;</a></p>
     </div><!--/col-->
     <div class="col-md-4">
         <h2>Protected &nbsp;<span style="vertical-align:top;font-size:11px;" class="label label-success">Viewer</span></h2>
         <p>This is protected area by role Viewer. You should have "Viewer" role in order to navigate this area.</p>
         <p>
             <table>
                 <tr>
                     <td style="text-align:right"><b>Login:</b></td>
                     <td>&nbsp;&nbsp;viewer@demo.com</td>
                 </tr>
                 <tr>
                     <td style="text-align:right"><b>Password:</b></td>
                     <td>&nbsp;&nbsp;viewer</td>
                 </tr>
             </table>
         </p>
         <p><br /><a class="btn btn-info" href="/Management/Viewer">View &raquo;</a></p>
     </div><!--/col-->
     <div class="col-md-4">
         <h2>Protected &nbsp;<span style="vertical-align:top;font-size:11px;" class="label label-success">Editor</span></h2>
         <p>This is protected area by role Editor. You should have "Editor" role in order to navigate this area.</p>
         <p>
             <table>
                 <tr>
                     <td style="text-align:right"><b>Login:</b></td>
                     <td>&nbsp;&nbsp;editor@demo.com</td>
                 </tr>
                 <tr>
                     <td style="text-align:right"><b>Password:</b></td>
                     <td>&nbsp;&nbsp;editor</td>
                 </tr>
             </table>
         </p>
         <p><br /><a class="btn btn-info" href="/Management/Editor">View &raquo;</a></p>
     </div><!--/col-->
 </div><!--/row-->



        <hr />
        <footer>
            <p>&copy; 2016 - My ASP.NET Application</p>
        </footer>
    </div>

</body>
</html>
