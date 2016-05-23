<div class="subnav" style="padding:7px">
   <div class="btn-toolbar">
      <a data-toggle="modal" data-target="#memberModal" class="btn btn-default btn-success btn-sm  triggerRemove" style="vertical-align:top !important" id="add-member">
      <i class="glyphicon glyphicon-user"></i>  Add                     
      </a>
      <a data-toggle="modal" data-target="#removeModel" class="btn btn-default btn-danger btn-sm" style="vertical-align:top !important" id="remove-member">
      <i class="glyphicon glyphicon-minus icon-white"></i> Remove                   
      </a>
      <div class="btn-group" style="vertical-align:top !important">
         <button class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">Assign&nbsp;                      
         <span class="caret"></span>
         </button><%@ include file="../fragment/assign.jsp" %>
      </div>
      <div class="btn-group" style="vertical-align:top !important;">
         <button class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">Reset&nbsp;
         <span class="caret"></span>
         </button><%@ include file="../fragment/reset.jsp" %>
      </div>
      <div class="input-group-sm" style="display:inline-block;vertical-align:top">
         <input size="40" type="text" id="members-search" class="input-xs" style="height:33px" />
         <button id="btn-member-search" style="vertical-align:top;margin-left:-1px;" class="btn btn-sm btn-info" type="button">
         <i class="glyphicon glyphicon-search icon-white"></i>
         </button>
      </div>
      <div style="float:right">
         <div class="btn-group" style="vertical-align:top !important">
            <button class="btn btn-default dropdown-toggle  btn-sm" data-toggle="dropdown">
            <i class="glyphicon glyphicon-download"></i>&nbsp;Export&nbsp;
            <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
               <li>
                  <a href="/Admin/Members/Download?FileType=CSV">CSV</a>
               </li>
            </ul>
         </div>
         <!-- /btn-group -->
         <div class="btn-group" style="vertical-align:top !important;margin-left:4px">
            <button class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">
            <i class="glyphicon glyphicon-upload"></i>&nbsp;Import&nbsp;
            <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
               <li>
                  <a id="members-import-csv" href="#">CSV</a>
               </li>
            </ul>
         </div>
         &nbsp;
         <!-- /btn-group -->
<!--          <a class="btn btn-default btn-info  btn-sm" id="refresh-member"> <i class="glyphicon glyphicon-refresh icon-white"></i>&nbsp;Refresh&nbsp;</a> -->
      </div>
   </div>
</div>
<div class="btn-toolbar" style="margin-top:10px;">
   <a href="#" data-role-id="-1" class="filter-by-role panel-roles-place" id="filter-role-id-none">Show All Roles</a>
   <div class="btn-group" data-toggle="buttons-radio" style="vertical-align:top;margin-right:10px">
      <a class="btn btn-default btn-xs" href="#" id="filter-role-condition-or">OR</a>
      <a class="btn btn-default btn-xs" href="#" id="filter-role-condition-and">AND</a>
   </div>
   <%@ include file="../fragment/sociallist.jsp" %>
</div>
<div class="btn-toolbar" style="margin-top:10px;white-space:nowrap">
   <div class="btn-group" style="margin-top:5px;vertical-align:top">
      <a class="btn btn-default btn-xs" id="alphabet-filter-clear" href="#" style="vertical-align:top" >All</a>
   </div>
   <%@ include file="../fragment/alphanumeric.jsp" %>
   <br/>
</div>