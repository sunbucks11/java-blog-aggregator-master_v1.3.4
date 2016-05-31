<div class="modal fade" id="fieldModel" field="dialog">
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
						<h4 class="modal-title" id="myModalLabel">Add field</h4>
					</div>
				</div>
			</div>
			<!-- =============  Body ==============-->
<!-- 		 <div class="modal-body" ng-controller="FieldController as ctrl" style="overflow-y: auto;"> -->

		<div class="modal-body">
			<div class="bootstrap-dialog-body">
					<div class="bootstrap-dialog-message">
						<div id="notify-message"></div>
			         </div>
		
		
							<form field="form" name="fieldForm" novalidate="" ng-submit="ctrl.submit()"">			
									<!-- ======= Name ======= -->
									<div class="form-group">
										<label for="field-name">Name</label> 
										<input type="text" class="input-xlarge form-control" id="field-name" placeholder="Enter field name" required="" 
										ng-bind="ctrl.field.name" data-ng-model="ctrl.field.name" style="color: black" maxlength="64" />
										
									 <div class="has-error" ng-show="fieldForm.$dirty">
								         <span ng-show="fieldForm.field-name.$error.required">This is a required field</span> 
			<!-- 					         <span ng-show="myForm.field-name.$error.minlength">Minimum length required is 3</span>  -->
								         <span ng-show="fieldForm.field-name.$invalid">This field is invalid </span>
								     </div>
				
									</div>
									<br>
									<!-- ======= Settings ======= -->
									<div class="form-group">
										<label for="field-settings">Description</label>
										<textarea class="input-xlarge form-control" id="field-settings" data-ng-model="ctrl.field.comments" rows="3" style="color: black" maxlength="4000"></textarea>
									</div>
									<br>
									<br>
							
							 <br> <br> <br>
							 
													 
	 		  
				   		</div> <!-- /RoleController -->
	
					<!-- ====== Footer =====-->
					<div class="modal-footer">
						<div class="bootstrap-dialog-footer">
							<div class="bootstrap-dialog-footer-buttons">
							<!-- <div class="modal-body" ng-controller="RoleController as ctrl" > -->
								 <button class="btn btn-primary btn-sm" ng-disabled="!fieldForm.$valid">Add</button> 
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