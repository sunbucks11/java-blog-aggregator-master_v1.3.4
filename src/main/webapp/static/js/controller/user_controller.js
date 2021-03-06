'use strict';

App.controller('UserController', ['$scope', 'UserService', function($scope, UserService) {
          var self = this;
          self.user={id:'',name:'' ,email:'' ,password:'' ,roles:[]};
          self.users=[];
       
          
          window.selectedUser = {};
          window.selectedRoleUserEmail= {};
          
          
          // Checkbox selection
          $scope.selection = {
              ids: {}
          
          };
          
          
          // Add or Remove role/s
          $scope.onAddOrRemoveRole = function(role) { 
              console.log("Enabled : " + $scope.selection.ids[role.id]);
    	      console.log("Role Id: " + role.id); 
              console.log("Fole name: " + role.name); 
              console.log("Fole settings: " + role.settings); 
              console.log("Role Created: " + role.createdDate); 
              
              UserService.updateUserRole(selectedUser.id, role);
              window.location.reload();
              
      };
          

      // Save selected user through the checkbox globally
      $scope.onAddRoleSaveUser = function(u) { 
    	  selectedUser = u;
      };

      
      
      
      
      
      
      
      
      
      
      // Enabled Checkbox selection
      $scope.selectionEnabled = {
          ids: {}
      
      };

      // Enable or disable field/s
      $scope.onTwoAuthEnableOrDisable = function(u) { 
    	  
    	      console.log("Enabled : " + u.enabled);
    	      console.log("User Id: " + u.id); 
              console.log("User name: " + u.name); 
              //console.log("User comment: " + u.comment); 
              console.log("User Created: " + u.createdDate); 
              console.log("User Modified: " + u.modifiedDate); 

    	      self.user.enabled = $scope.selectionEnabled.ids[u.id];
    	      self.user.name = u.name;
    	      //self.field.comment = u.comment;
    	      self.user.enabled = u.enabled;
    	      
              self.updateTwoAuth(self.user, u.id, self.user.enabled);
              console.log("self.user.enabled : " + self.user.enabled);

      };
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      // Remove a Role from a user
      $scope.onRemoveUserRole = function (roleId, emailAddress){
    	  console.log("Role Id to be deleted: " + roleId);
    	  selectedRoleUserEmail = emailAddress;
    	  UserService.deleteUserRole(roleId, selectedRoleUserEmail);
    	  window.location.reload();
      }

          
          self.fetchAllUsers = function(){
              UserService.fetchAllUsers()
                  .then(
      					       function(d) {
      						        self.users = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Currencies');
            					}
      			       );
          };
           
          self.createUser = function(user){
              UserService.createUser(user)
		              .then(
                              self.fetchAllUsers,
                              //window.location.reload(),
				              function(errResponse){
					               console.error('Error while creating User.');
				              }	
                  );
          };

         self.updateUser = function(user, id){
              UserService.updateUser(user, id)
		              .then(
				              self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while updating User.');
				              }	
                  );
          };
          
          
          
     
          self.updateUserRole = function(id, role){
              UserService.updateUserRole(id, role)
		              .then(
				              self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while updating User role.');
				              }	
                  );
          };
        
          
          
          
          
          
          
          
          
          
          
          
          
          self.updateTwoAuth = function(user, id){
        	  UserService.updateTwoAuth(user, id)
		              .then(
				              self.fetchAllUserss, 
				              function(errResponse){
					               console.error('Error while updating Two Factor Auth..');
				              }	
                  );
          };
          
          
          
          
          
          
          
          
          
          

         self.deleteUser = function(id){
              UserService.deleteUser(id)
		              .then(
				              self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while deleting User.');
				              }	
                  );
          };

          self.fetchAllUsers();

      /*    
          self.submit = function() {
              if(self.user.id==null){
                  console.log('Saving New User', self.user);    
                  self.createUser(self.user);
              }else{
                  self.updateUser(self.user, self.user.id);
                  console.log('User updated with id ', self.user.id);
              }
              self.reset();
          };
      */     
              
          self.submit = function() {
                  console.log('Saving New User', self.user);  
                  self.createUser(self.user);
                  self.reset();
          };     
  
          self.update = function(){
        	  self.updateUser(self.user, self.user.id);
          };
             
          

          
         self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.users.length; i++){
                  if(self.users[i].id == id) {
                	  console.log('id to be edited', self.users[i]);
                	  //angular.copy(self.users[i]);
                	  
                	  self.user.id = self.users[i].id;
                	  self.user.name = self.users[i].name;
                	  self.user.email = self.users[i].email;
                	  
                	  
                     break;
                  }
              }
          };
              
          self.remove = function(id){
              console.log('id to be deleted', id);
              for(var i = 0; i < self.users.length; i++){
                  if(self.users[i].id == id) {
                     self.reset();
                     break;
                  }
              }
              self.deleteUser(id);
          };

          
          self.reset = function(){
            /*  self.user={id:null,username:'',address:'',email:''};*/
        	  self.user={id:null ,name:'' ,email:'', password:'' , confirmPassword:''};
              $scope.myForm.$setPristine(); //reset Form
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
