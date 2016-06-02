'use strict';

App.controller('FieldController', ['$scope', 'FieldService', function($scope, FieldService) {
          var self = this;
          self.field={id:'',name:'' ,comment:'' ,enabled:'' ,createdDate:'' ,modifiedDate:''};
          self.fields=[];


          
          var index;
          var a = ["a", "b", "c"];
          for (index = 0; index < a.length; ++index) {
              console.log(a[index]);
          }
          

          // Checkbox selection
          $scope.selection = {
              ids: {}
          
          };

          // Enable or disable field/s
          $scope.onEnableOrDisable = function(f) { 
        	  
        	      console.log("Enabled : " + f.enabled);
        	      console.log("Field Id: " + f.id); 
	              console.log("Field name: " + f.name); 
	              console.log("Field comment: " + f.comment); 
	              console.log("Field Created: " + f.createdDate); 
	              console.log("Field Modified: " + f.modifiedDate); 

        	      self.field.enabled = $scope.selection.ids[f.id];
        	      self.field.name = f.name;
        	      self.field.comment = f.comment;
        	      self.field.enabled = f.enabled;
        	      
	              self.updateField(self.field, f.id, self.field.enabled);
	              console.log("self.field.enabled : " + self.field.enabled);
    
          };
   

          self.fetchAllFields = function(){
              FieldService.fetchAllFields()
                  .then(
      					       function(d) {
      						      self.fields = d;  
      						      console.debug('Successfully fetched all fields! ');
      					       },
            					function(errResponse){
      					    	   console.error('Error while fetching fields');
            					}
      			       );
          };
           
          self.createField = function(field){
              FieldService.createField(field)
		              .then(
                      self.fetchAllFields, 
				              function(errResponse){
					               console.error('Error while creating field.');
				              }	
                  );
          };

         self.updateField = function(field, id){
              FieldService.updateField(field, id)
		              .then(
				              self.fetchAllFields, 
				              function(errResponse){
					               console.error('Error while updating Fole.');
				              }	
                  );
          };

         self.deleteField = function(id){
              FieldService.deleteField(id)
		              .then(
				              self.fetchAllFields, 
				              function(errResponse){
					               console.error('Error while deleting User.');
				              }	
                  );
          };

          self.fetchAllFields();

      /*    
          self.submit = function() {
              if(self.field.id==null){
                  console.log('Saving New User', self.field);    
                  self.createField(self.field);
              }else{
                  self.updateField(self.field, self.field.id);
                  console.log('User updated with id ', self.field.id);
              }
              self.reset();
          };
      */     
              
          self.submit = function() {
                  console.log('Saving New field', self.field);  
                  self.createField(self.field);
                  self.reset();
          };     
  
          self.update = function(){
        	  self.updateField(self.field, self.field.id);
          };
             
          

          
         self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.fields.length; i++){
                  if(self.fields[i].id == id) {
                	  console.log('id to be edited', self.fields[i]);
                	  //angular.copy(self.fields[i]);
                	  
                	  self.field.id = self.fields[i].id;
                	  self.field.name = self.fields[i].name;
                	  self.field.comment = self.fields[i].comment;
                	  self.field.enabled = self.fields[i].enabled;             	                	  
                     break;
                  }
              }
          };
              
          self.remove = function(id){
              console.log('id to be deleted', id);
              for(var i = 0; i < self.fields.length; i++){
                  if(self.fields[i].id == id) {
                     self.reset();
                     break;
                  }
              }
              self.deleteField(id);
          };

          
          self.reset = function(){
        	  self.field={id:null ,name:'' ,comment:'', enabled:''};
              //$scope.myForm.$setPristine(); //reset Form
          };
          

          
          /*
          self.guid = function(){
        	  function s4() {
        		    return Math.floor((1 + Math.random()) * 0x10000)
        		      .toString(16)
        		      .substring(1);
        		  }
        		  return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
        		    s4() + '-' + s4() + s4() + s4();
          };
          */



      }]);
