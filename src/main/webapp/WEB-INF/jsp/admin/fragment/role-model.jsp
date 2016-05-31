<div class="modal fade" id="roleModel" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content" style="box-shadow: rgba(0, 0, 0, 0.14902) 0px 0px 0px 8px;">
		   <!-- =============  header ==============-->
			<div class="modal-header bootstrap-dialog-draggable">
				<div class="bootstrap-dialog-header">
					<div class="bootstrap-dialog-close-button" style="display: block;">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="bootstrap-dialog-title" id="dialog-title">
						<h4 class="modal-title" id="myModalLabel">Add Role</h4>
					</div>
				</div>
			</div>
			<!-- =============  Body ==============-->
		 <div class="modal-body" ng-controller="RoleController as ctrl" style="overflow-y: auto;">
			<div class="bootstrap-dialog-body">
					<div class="bootstrap-dialog-message">
						<div id="notify-message"></div>
			         </div>
		
		
							<form role="form" name="roleForm" novalidate="" ng-submit="ctrl.submit()"">			
									<!-- ======= Name ======= -->
									<div class="form-group">
										<label for="role-name">Name</label> 
										<input type="text" class="input-xlarge form-control" id="role-name" placeholder="Enter role name" required="" 
										ng-bind="ctrl.role.name" data-ng-model="ctrl.role.name" style="color: black" maxlength="64" />
										
									 <div class="has-error" ng-show="roleForm.$dirty">
								         <span ng-show="roleForm.role-name.$error.required">This is a required field</span> 
			<!-- 					         <span ng-show="myForm.role-name.$error.minlength">Minimum length required is 3</span>  -->
								         <span ng-show="roleForm.role-name.$invalid">This field is invalid </span>
								     </div>
				
									</div>
									<br>
									<!-- ======= Settings ======= -->
									<div class="form-group">
										<label for="role-settings">Settings</label>
										<textarea  placeholder="Enter role description" class="input-xlarge form-control" id="role-settings" data-ng-model="ctrl.role.settings" rows="3" style="color: black" maxlength="4000"></textarea>
									</div>
									<br>
									<br>
									
							 <!-- ======= Background color ======= -->			  	
     						<div ng-controller="ExampleController">
							  	<br>
							  	<strong>Background colour: </strong>
							  	<input data-ng-model="ctrl.role.backColor" type="color" value={{getColor()}} />
							  	{{ctrl.role.backColor}}  
							 </div> 
	
							
							 <br> <br> <br>
							 
													 
	 		  
				   		</div> <!-- /RoleController -->
	
					<!-- ====== Footer =====-->
					<div class="modal-footer">
						<div class="bootstrap-dialog-footer">
							<div class="bootstrap-dialog-footer-buttons">
							<!-- <div class="modal-body" ng-controller="RoleController as ctrl" > -->
								 <button class="btn btn-primary btn-sm" ng-disabled="!roleForm.$valid">Add</button> 
								 <button class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
							<!-- </div> -->
						</div>
					</div>
				</div> <!-- /body -->
		
		
		    </form>
		
		
		
		
		
		
		

		</div>
	</div>
	</div>
</div>
