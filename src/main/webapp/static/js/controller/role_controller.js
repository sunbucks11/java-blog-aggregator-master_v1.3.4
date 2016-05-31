'use strict';


App.controller('ExampleController', ['$scope', function($scope) {
/*  $scope.names = ['pizza', 'unicorns', 'robots'];
    $scope.my = { favorite: 'pizza'};*/

/*
  $scope.total = function(){
	  var x = document.getElementById("color2").value;
	 // return $scope.one * $scope.two;
  };
 */
	
	 $scope.mycolor = "#f0f0f0";

	    $scope.$watch('mycolor', function(newVal) {
	        console.log('newVal ' + newVal);
	    });
	
  
  
}]);


App.controller('RoleController', ['$scope', 'RoleService', function($scope, RoleService) {
          var self = this;
          self.role={id:'',name:'' ,isBuiltIn:'' ,backColor:'' ,foreColor:'' ,settings:'' ,created:'' ,modified:''};
          self.roles=[];
       
          self.fetchAllRoles = function(){
              RoleService.fetchAllRoles()
                  .then(
      					       function(d) {
      						        self.roles = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Roles');
            					}
      			       );
          };
           
          self.createRole = function(role){
              RoleService.createRole(role)
		              .then(
                      self.fetchAllRoles, 
				              function(errResponse){
					               console.error('Error while creating Role.');
				              }	
                  );
          };

         self.updateRole = function(role, id){
              RoleService.updateRole(role, id)
		              .then(
				              self.fetchAllRoles, 
				              function(errResponse){
					               console.error('Error while updating Fole.');
				              }	
                  );
          };

         self.deleteRole = function(id){
              RoleService.deleteRole(id)
		              .then(
				              self.fetchAllRoles, 
				              function(errResponse){
					               console.error('Error while deleting User.');
				              }	
                  );
          };

          self.fetchAllRoles();

      /*    
          self.submit = function() {
              if(self.role.id==null){
                  console.log('Saving New User', self.role);    
                  self.createRole(self.role);
              }else{
                  self.updateRole(self.role, self.role.id);
                  console.log('User updated with id ', self.role.id);
              }
              self.reset();
          };
      */     
              
          self.submit = function() {
                  console.log('Saving New Role', self.role);  
                  self.createRole(self.role);
                  self.reset();
          };     
  
          self.update = function(){
        	  self.updateRole(self.role, self.role.id);
          };
             
          

          
         self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.roles.length; i++){
                  if(self.roles[i].id == id) {
                	  console.log('id to be edited', self.roles[i]);
                	  //angular.copy(self.roles[i]);
                	                  	  
                	  self.role.id = self.roles[i].id;
                	  self.role.name = self.roles[i].name;
                	  self.role.isBuiltIn = self.roles[i].isBuiltIn;
                	  self.role.backColor = self.roles[i].backColor;
                	  self.role.foreColor = self.roles[i].foreColor;
                	  self.role.settings = self.roles[i].settings;
                	  self.role.created = self.roles[i].created;
                	  self.role.modified = self.roles[i].modified;                  	  
                     break;
                  }
              }
          };
           
          
          
          
          self.remove = function(id){
              console.log('id to be deleted', id);
              for(var i = 0; i < self.roles.length; i++){
                  if(self.roles[i].id == id) {
                     self.reset();
                     break;
                  }
              }
              self.deleteRole(id);
          };

          
          self.reset = function(){
        	  self.role={id:null ,name:'' ,email:'', isBuiltIn:'' , backColor:'' ,foreColor:'' ,settings:'' ,created:'' ,modified:''};
             // $scope.myForm.$setPristine(); //reset Form
          };
          

          
          
          self.guid = function(){
        	  function s4() {
        		    return Math.floor((1 + Math.random()) * 0x10000)
        		      .toString(16)
        		      .substring(1);
        		  }
        		  return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
        		    s4() + '-' + s4() + s4() + s4();
          };
          


      }]);
