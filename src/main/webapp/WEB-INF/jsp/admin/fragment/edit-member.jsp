<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
		
		<link rel="stylesheet" type="text/css" href='<c:url value="./resources/libs/bootstrap-3.1.1/css/bootstrap.min.css"/>'>
		<link rel="stylesheet" type="text/css" href='<c:url value="./resources/libs/bootstrap-dialog/css/bootstrap-dialog.min.css"/>'>
		<link rel="stylesheet" type="text/css" href='<c:url value="./resources/css/style.css"/>'>
</head>


<div class="modal fade" id="editMemberModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <!-- =============  header ==============-->
            <div class="modal-header bootstrap-dialog-draggable">
                <div class="bootstrap-dialog-header">
                    <div class="bootstrap-dialog-close-button" style="display: block;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <h4 class="modal-title" id="myModalLabel">Edit Member</h4>
                </div>
            </div>
            <!-- =============  Body ==============-->
            <div class="modal-body" ng-controller="UserController as ctrl">

                <!-- Tab Pages -->
                <ul class="nav nav-tabs" id="tabContent">
                    <li class="active"><a href="#details" data-toggle="tab">General</a>
                    </li>
                    <li><a href="#api" data-toggle="tab">API</a>
                    </li>
                    <li><a href="#attempts" data-toggle="tab">Attempts</a>
                    </li>
                </ul>
                <br>

                <div class="tab-content">

                    <!-- General Tab Page -->
                    <div class="tab-pane active" id="details">
                        <div class="control-group">
<%--                            <img src="data:image/jpeg;base64,${image}" height="100" width="100"/>  --%>
 							<img src="data:image/jpeg;base64,${profilePic}" height="100" width="100"/> 
                          
<!--                           <img ng-src="http://www.gravatar.com/avatar/{{profilePic}}" alt="Description" /> -->
                          
                          <div id="previewImage" class="dropzone-previews"></div>
              
                            
                       </div>
                        
                        
                        
                        
                    
                    
					                    
					<div ng-app="fileUpload" ng-controller="MyCtrl">
					
					
					    <form name="myForm">
					        <div>Crop Image and Upload</div>
					        <button ngf-select ng-model="picFile" accept="image/*">
					            Select Picture</button>
					        <div ngf-drop ng-model="picFile" ngf-pattern="image/*"
					             class="cropArea">
					            <img-crop image="picFile  | ngfDataUrl" result-image="croppedDataUrl" ng-init="croppedDataUrl=''">
					            </img-crop>
					        </div>
					        <div>
					            <img ng-src="{{croppedDataUrl}}" />
					        </div>
					        <button ng-click="upload(croppedDataUrl, picFile.name)">Submit</button> 
					            
					        <span class="progress" ng-show="progress >= 0">
					          <div style="width:{{progress}}%" ng-bind="progress + '%'"></div>
					        </span>
					        <span ng-show="result">Upload Successful</span>
					        <span class="err" ng-show="errorMsg">{{errorMsg}}</span>
					    </form>
					</div>                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                        
                        
                        
                        
                        
                        
                        
                        <!-- 
                            <div ng-controller="Ctrl">
 							  <div>Select an image file: <input enctype="multipart/form-data" class="btn btn-info btn-file dropzone" type="file" id="fileInput" /></div>
							  <div class="cropArea">
							    <img-crop image="myImage" result-image="myCroppedImage"></img-crop>
							  </div>
							  <div>Cropped Image:</div>
							  <div><img ng-src="{{myCroppedImage}}" /></div>
							</div>
                        -->
                        

                        <div style="float: left; margin-left: 150px; margin-top:-100px; display: inline-block;">
                            <b>Upload a Photo</b>
                            <br>
                            <p>You can upload a JPG, GIF or PNG file. File size limit is about 4MB.</p>                  
   					        <span enctype="multipart/form-data" id="dropzone-form" class="btn btn-info btn-file dropzone"> Choose Photo</span>       
                            <span class="btn btn-danger btn-file"> Reset Photo <input type="file"></span>
                            
                            <button id="upload-button" class="btn btn-primary"> <span class="glyphicon glyphicon-upload"></span> Upload </button>
                            
                        </div>










<!--			    	
    		<div class="panel-body">
				<div>
					<form id="dropzone-form" class="dropzone" enctype="multipart/form-data">

						<div
							class="dz-default dz-message file-dropzone text-center well col-sm-12"> 

 							<span class="glyphicon glyphicon-paperclip"></span> <span> 
								To attach files, drag and drop here</span><br> <span>OR</span><br> 
 							<span>Just Click</span> 
						</div> 

						<div class="dropzone-previews"></div>
					</form>
					<hr>
					<button id="upload-button" class="btn btn-primary">
 						<span class="glyphicon glyphicon-upload"></span> Upload
 					</button>
					<a class="btn btn-primary pull-right" href="list">
						<span class="glyphicon glyphicon-eye-open"></span> View All Uploads
					</a>
				</div>
			</div>	
-->	






                        <br>
                        <br>
                        <form role="form" name="myForm" novalidate="" ng-submit="ctrl.submit()">
                            <!-- Name -->
                            <div class="form-group ">
                                <label for="uname ">Name</label>
                                <input class="form-control " type="text " name="userName " placeholder="Enter your name " required=" " data-ng-model="ctrl.user.name " />
                                <div class="has-error " ng-show="myForm.$dirty ">
                                    <span ng-show="myForm.uname.$error.required ">This is a required field</span>
                                    <span ng-show="myForm.uname.$error.minlength ">Minimum length required is 3</span>
                                    <span ng-show="myForm.uname.$invalid ">This field is invalid </span>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="form-group " data-ng-class="{ 'has-error':myForm.email.$dirty} ">
                                <label for="email ">Email</label>
                                <input class="form-control " type="email " name="email " required=" " data-ng-model="ctrl.user.email " />
                                <span class="help-block " data-ng-show="myForm.email.$error.required && myForm.email.$dirty ">required</span>
                                <span class="help-block " data-ng-show="!myForm.email.$error.required && myForm.email.$error.email && myForm.email.$dirty ">invalid email</span>
                            </div>

                            <!-- Password -->
                            <div class="form-group " data-ng-class="{ 'has-error':!myForm.password.$valid} ">
                                <label for="password ">Password</label>
                                <input class="form-control " type="password " name="password " required=" " data-ng-model="ctrl.user.password " />
                                <span class="help-block " data-ng-show="myForm.password.$error.required ">This is required.</span>
                            </div>

                            <!-- Confirm Password -->
                            <div class="form-group " data-ng-class="{ 'has-error':!myForm.passwordCompare.$valid} ">
                                <label for="passwordCompare ">Confirm Password</label>
                                <input class="form-control " type="password " name="passwordCompare " required=" " data-ng-model="ctrl.user.confirmPassword " data-ng-match="ctrl.user.password " />
                                <span class="help-block " data-ng-show="myForm.passwordCompare.$error.required ">This is required.</span>
                                <span class="help-block " data-ng-show="myForm.passwordCompare.$error.match ">Passwords do not match.</span>
                            </div>
                            <br>
                            <input type="submit " value="Generate & Send Password " class="btn btn-primary btn-sm " ng-disabled="!myForm.$valid ">
                            <!-- <button type="button " ng-click="ctrl.reset() " class="btn btn-warning btn-sm " ng-disabled="myForm.$pristine ">ResetForm</button>  -->
                        </form>
                    </div>

                    <!-- API Tab Page -->
                    <div class="tab-pane " id="api ">
                        <p>
                            <spring:message code="api.text " text="Semir " />
                        </p>
                        <div class="well ">The generated API Token will be displayed here</div>
                        <button class="btn btn-success btn-sm " data-dismiss="modal ">Generate a new API Token</button>
                        <button class="btn btn-danger btn-sm " data-dismiss="modal ">Remove Token</button>
                    </div>

                    <!-- Attempts Tab Page -->
                    <div class="tab-pane " id="attempts ">
                        TODO: LOGIN ATTEMPTS
                    </div>
                </div>

                <!-- ====== Footer =====-->
                <div class="modal-footer">
                	<div class="bootstrap-dialog-footer">
                   		<div class="bootstrap-dialog-footer-buttons">
                        	<div class="row">
                            	<div class="form-actions floatRight">
                                 	<button class="btn btn-info btn-sm " data-dismiss="modal ">Save</button>
                                    <button class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
                                </div>
                             </div>
                        </div>
                    </div>
          		</div>
 
            </div>
        </div>
    </div>
</div>



