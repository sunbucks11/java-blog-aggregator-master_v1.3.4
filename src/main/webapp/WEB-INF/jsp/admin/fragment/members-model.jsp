<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<!-- =============  header ==============-->
			<div class="modal-header bootstrap-dialog-draggable">
				<div class="bootstrap-dialog-header">
					<div class="bootstrap-dialog-close-button" style="display: block;">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<h4 class="modal-title" id="myModalLabel">Add Member</h4>
				</div>
			</div>
			<!-- =============  Body ==============-->
			<div class="modal-body" ng-controller="UserController as ctrl">

			<form role="form" name="myForm" novalidate=""  ng-submit="ctrl.submit()"">
			
			   <div class="form-group">
			      <label for="uname">Name</label> 
			      <input class="form-control" type="text" name="userName" placeholder="Enter your name" required="" data-ng-model="ctrl.user.name" />
			      <div class="has-error" ng-show="myForm.$dirty">
			         <span ng-show="myForm.uname.$error.required">This is a required field</span> 
			         <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span> 
			         <span ng-show="myForm.uname.$invalid">This field is invalid </span>
			      </div>
			   </div>
	
			  <div class="form-group" data-ng-class="{'has-error':myForm.email.$dirty}">
			      <label for="email">Email</label>    
			       <input class="form-control" type="email" name="email" required="" data-ng-model="ctrl.user.email" />
				   <span class="help-block" data-ng-show="myForm.email.$error.required && myForm.email.$dirty">required</span>
				   <span class="help-block" data-ng-show="!myForm.email.$error.required && myForm.email.$error.email && myForm.email.$dirty">invalid email</span>
			   </div>   

			   <div class="form-group" data-ng-class="{'has-error':!myForm.password.$valid}">
			      <label for="password">Password</label>
			      <input class="form-control" type="password" name="password" required="" data-ng-model="ctrl.user.password" />
			      <span class="help-block" data-ng-show="myForm.password.$error.required">This is required.</span>
			   </div>


			   <div class="form-group" data-ng-class="{'has-error':!myForm.passwordCompare.$valid}">
			   	 <label for="passwordCompare">Confirm Password</label>
			      <input class="form-control" type="password" name="passwordCompare" required="" data-ng-model="ctrl.user.confirmPassword" data-ng-match="ctrl.user.password" />
			      <span class="help-block" data-ng-show="myForm.passwordCompare.$error.required">This is required.</span>
			      <span class="help-block" data-ng-show="myForm.passwordCompare.$error.match">Passwords do not match.</span>
			   </div>
			   <br>
			   <input type="submit" value="Add" class="btn btn-primary btn-sm" ng-disabled="!myForm.$valid">
			   
			   <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">ResetForm</button> 
			</form>
			
			<!-- ====== Footer =====-->
			
			<div class="modal-footer">
			   <div>
			      <button class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
			   </div>
			</div>
		</div>
	</div>
</div>
</div>




