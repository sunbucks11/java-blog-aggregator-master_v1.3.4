'use strict';


App.controller('MainCtrl', function($scope) {
      $scope.newObject = {};
	  $scope.items = [{name:'Enable'}];
});


App.controller('FieldController', ['$scope', 'FieldService', function($scope, FieldService) {
          var self = this;

          self.field={id:'',name:'' ,comment:'' ,enabled:''};
          self.fields=[];
       
          self.fetchAllFields = function(){
              FieldService.fetchAllFields()
                  .then(
      					       function(d) {
      						        self.fields = d;
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
