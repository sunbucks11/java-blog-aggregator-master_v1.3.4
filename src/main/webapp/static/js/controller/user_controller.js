'use strict';

App.controller('UserController', ['$scope', 'UserService', function($scope, UserService) {
          var self = this;
/*        self.user={id:'', username:'',roles:'',email:''};*/
          self.user={id:'',name:'' ,email:'' ,password:'' ,roles:[]};
          self.users=[];
       
          
          window.selectedUser = {};
          
          
          // Checkbox selection
          $scope.selection = {
              ids: {}
          
          };
          
          
          // Add or Remove role/s
          $scope.onAddOrRemoveRole = function(r) { 
        	  
        	  /*
              console.log("Enabled : " + $scope.selection.ids[r.id]);
    	      console.log("Role Id: " + r.id); 
              console.log("Fole name: " + r.name); 
              console.log("Role Created: " + r.createdDate); 
              */
              
              
    	      //console.log("User Id: " + u.id); 
              console.log("User name: " + selectedUser.id); 
             // console.log("User Created: " + u.createdDate); 
              
              console.log("Role name: " + r.name); 
              
              
              
              /*
    	      self.user.enabled = $scope.selection.ids[r.id];
    	      self.user.name = r.name;
    	      self.user.comment = r.comment;
    	      */
              
              //self.updateUser(self.user, r.id);
              self.updateUserRole(selectedUser, r);
              
      };
          
      
      
      
      // Add or Remove role/s
      $scope.onAddRoleSaveUser = function(u) { 
    	  selectedUser = u;
    	  //console.log("Selected user: " + selectedUser.name); 
      };
      
      
      
      
      
      
      
          
          
          
          
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
          
          
          
          
          
          
          
          
          self.updateUserRole = function(user, id, role){
              UserService.updateUserRole(user, id, role)
		              .then(
				              self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while updating User fole.');
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
