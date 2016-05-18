<div class="modal fade" id="removeModel" role="dialog">
   <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
         <!-- =============  header ==============-->
         <div class="modal-header bootstrap-dialog-draggable">
            <div class="bootstrap-dialog-header">
               <div class="bootstrap-dialog-close-button" style="display: block;">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               </div>
               <h4 class="modal-title" id="myModalLabel">Remove Member</h4>
            </div>
         </div>
         <!-- =============  Body ==============-->
         <div class="modal-body" ng-controller="UserController as ctrl">
            <div class="bootstrap-dialog-body">
               <div class="bootstrap-dialog-message">
                  <div id="notify-message"></div>
                  <form ng-submit="ctrl.submit()" name="myForm">
                     <div class="panel panel-default">
                        <div class="tablecontainer">
                           <table class="table table-hover">
                              <tbody>
                                 <tr ng-repeat="u in ctrl.users track by u.id">
                                    <td><span ng-bind="u.id"></span></td>
                                    <td><span ng-bind="u.name"></span></td>
                                    <td>
                                       <div style="display: inline;" ng-repeat="r in u.roles">
                                          <!--  <span class={{r}} ng-bind="r"></span>	 -->
                                          <span class={{r}}>{{r | limitTo : 5 : 5}}</span>
                                       </div>
                                    </td>
                                    <td><span ng-bind="u.email"></span></td>
                                    <td>
                                       <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
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
         <!-- /body -->
      </div>
   </div>
</div>



<!-- 
<div class="modal-body" ng-controller="UserController as ctrl">
	<form ng-submit="ctrl.submit()" name="myForm">		
		<div class="panel panel-default">
		   <div class="tablecontainer">
		      <table class="table table-hover">
		         <tbody>
		            <tr ng-repeat="u in ctrl.users track by u.id">
		               <td><span ng-bind="u.id"></span></td>
		               <td><span ng-bind="u.name"></span></td>
		               <td>
		                  <div style="display: inline;" ng-repeat="r in u.roles">
		                     <span class={{r}}>{{r | limitTo : 5 : 5}}</span>
		                  </div>
		               </td>
		               <td><span ng-bind="u.email"></span></td>
		               <td>
		                  <button type="button" ng-click="ctrl.edit(u.id)"
		                     class="btn btn-success custom-width">Edit</button>
		                  <button type="button" ng-click="ctrl.remove(u.id)"
		                     class="btn btn-danger custom-width">Remove</button>
		               </td>
		            </tr>
		         </tbody>
		      </table>
		   </div>
		 </div>
	</form>
 </div>
-->