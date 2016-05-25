<div class="modal fade" id="addRoleModel" role="dialog">
   <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
         <!-- =============  header ==============-->
         <div class="modal-header bootstrap-dialog-draggable">
            <div class="bootstrap-dialog-header">
               <div class="bootstrap-dialog-close-button" style="display: block;">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               </div>
               <h4 class="modal-title" id="myModalLabel">Add Role</h4>
            </div>
         </div>
         <!-- =============  Body ==============-->
      <div ng-controller="UserController as ctrl">
         <div class="modal-body" ng-controller="RoleController as ctrl">
            <div class="bootstrap-dialog-body">
               <div class="bootstrap-dialog-message">
                  <div id="notify-message"></div>
                  <form ng-submit="ctrl.submit()" name="myForm">
                     <div class="panel panel-default">
                        <div class="tablecontainer">
                           <table class="table table-hover">
                              <tbody>
                                 <tr ng-repeat="r in ctrl.roles track by r.id">
                                 
                                   <td>
									 <input ng-checked={{r.enabled}} type="checkbox" ng-click='onAddOrRemoveRole(r)' ng-model="selection.ids[r.id]" name="group"  /> 
								   </td>
                                 
                                    <td><span ng-bind="r.id"></span></td>
                                    <td><span ng-bind="r.name"></span></td>
                                    <td>
<!--                                        <button type="button" ng-click="ctrl.remove(r.id)" class="btn btn-danger custom-width">Remove</button> -->
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </form>
                  <!-- /form -->
                  <!-- ====== Footer =====-->
                  <div class="modal-footer">
                     <div class="bootstrap-dialog-footer">
                        <div class="bootstrap-dialog-footer-buttons">
                           <div class="row">
                              <div class="form-actions floatRight">
                                 <button class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- /footer -->
               </div>
            </div>
         </div>
       </div>
         <!-- /body -->
      </div>
   </div>
</div>
