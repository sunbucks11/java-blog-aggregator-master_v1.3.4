<div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
         <!-- =============  header ==============-->
         <div class="modal-header bootstrap-dialog-draggable">
            <div class="bootstrap-dialog-header">
               <div class="bootstrap-dialog-close-button" style="display: block;">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               </div>
				<h4 class="modal-title" id="myModalLabel">Add Member</h4>
            </div>
         </div>
         <!-- =============  Body ==============-->
         <div class="modal-body" ng-controller="UserController as ctrl">
            <div class="bootstrap-dialog-body">
               <div class="bootstrap-dialog-message">
                  <div id="notify-message"></div>
                  <form ng-submit="ctrl.submit()" name="myForm">
                     <input type="hidden" ng-model="ctrl.user.id" />
                     <!-- ====== Name =====-->
                     <div class="form-group">
                        <label for="uname">Name</label> <input type="text" id="uname"
                           ng-model="ctrl.user.name" id="uid"
                           placeholder="Enter your name" required ng-minlength="1"
                           class="input-xlarge formrm-control" id="member-name"
                           style="width: 97%; color: black" maxlength="64">
                        <div class="has-error" ng-show="myForm.$dirty">
                           <span ng-show="myForm.uname.$error.required">This is a required field</span> 
                           <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span> 
                           <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                        </div>
                     </div>
                     <!-- ====== Email =====-->
                     <div class="row">
                        <div class="form-group col-md-12">
                           <label for="member-email">Email</label> 
                           <input type="email" ng-model="ctrl.user.email" id="email" placeholder="Enter your Email" required class="input-xlarge formrm-control" id="member-email" style="width: 97%; color: black" maxlength="64">
                           <div class="has-error" ng-show="myForm.$dirty">
                              <span ng-show="myForm.email.$error.required">This is a required field</span> 
                              <span ng-show="myForm.email.$invalid">This field is invalid </span>
                           </div>
                        </div>
                     </div>
                     <!-- ====== Time Zone =====-->
                     <div class="form-group">
                        <label for="member-time-zone">Time Zone</label>
                        <%@ include file="../fragment/timezone.jsp"%>
                     </div>
                     <!-- ====== Password =====-->
                     <div class="form-group">
                        <label class="member-pass" for="member-email">Password</label>
                        <input type="password" ng-model="ctrl.user.password" id="uname" class="input-xlarge form-control"
                           id="member-pass" style="width: 97%; color: black"
                           maxlength="64">
                     </div>
                     <!-- ====== Confirm Password =====-->
                     <div class="form-group">
                        <label class="member-pass-again" for="member-pass-again">Password
                        Confirmation</label> <input type="password"
                           class="input-xlarge form-control"
                           id="member-pass-confirmation" style="width: 97%; color: black"
                           maxlength="64">
                     </div>
                     <!-- ====== Footer =====-->
                     <div class="modal-footer">
                        <div class="bootstrap-dialog-footer">
                           <div class="bootstrap-dialog-footer-buttons">
                              <div class="row">
                                 <div style="float: left" class="form-actions floatRight">
                                    <button type="button" ng-click="ctrl.update()"
                                       class="btn btn-info btn-sm" ng-disabled="myForm.$pristine">Update</button>
                                    <input type="submit" value="Add"
                                       class="btn btn-primary btn-sm"
                                       ng-disabled="myForm.$pristine">
                                    <button type="button" ng-click="ctrl.reset()"
                                       class="btn btn-warning btn-sm"
                                       ng-disabled="myForm.$pristine">Reset Form</button>
                                       
                                   </div>
                              </div>
                              
                                                                 <div>
                                    <button class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
                                 </div>
                              
                              
                           </div>
                        </div>
                     </div><!-- /footer -->
                  </form><!-- /form -->
               </div>
            </div>
         </div><!-- /body -->
      </div>
   </div>
</div>