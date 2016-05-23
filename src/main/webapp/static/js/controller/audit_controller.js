'use strict';

App.controller('AuditController', ['$scope', 'AuditService', function($scope, AuditService) {
          var self = this;
          self.audit={id:'',name:'' ,created:'' ,source:'' ,ipAddress:'' ,email:'' ,description:'' };
          self.audits=[];
       
          self.fetchAllAudits = function(){
              AuditService.fetchAllAudits()
                  .then(
      					       function(d) {
      						        self.audits = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching audits');
            					}
      			       );
          };
           
          self.createAudit = function(audit){
              AuditService.createAudit(audit)
		              .then(
                      self.fetchAllAudits, 
				              function(errResponse){
					               console.error('Error while creating audit.');
				              }	
                  );
          };

         self.updateAudit = function(audit, id){
              AuditService.updateAudit(audit, id)
		              .then(
				              self.fetchAllAudits, 
				              function(errResponse){
					               console.error('Error while updating Fole.');
				              }	
                  );
          };

         self.deleteAudit = function(id){
              AuditService.deleteAudit(id)
		              .then(
				              self.fetchAllAudits, 
				              function(errResponse){
					               console.error('Error while deleting User.');
				              }	
                  );
          };

          self.fetchAllAudits();

      /*    
          self.submit = function() {
              if(self.audit.id==null){
                  console.log('Saving New User', self.audit);    
                  self.createAudit(self.audit);
              }else{
                  self.updateAudit(self.audit, self.audit.id);
                  console.log('User updated with id ', self.audit.id);
              }
              self.reset();
          };
      */     
              
          self.submit = function() {
                  console.log('Saving New audit', self.audit);  
                  self.createAudit(self.audit);
                  self.reset();
          };     
  
          self.update = function(){
        	  self.updateAudit(self.audit, self.audit.id);
          };
             
          

          
         self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.audits.length; i++){
                  if(self.audits[i].id == id) {
                	  console.log('id to be edited', self.audits[i]);
                	  
                	  self.audit.id = self.audits[i].id;
                	  self.audit.name = self.audits[i].name;
                	  self.audit.comment = self.audits[i].created;
                	  self.audit.enabled = self.audits[i].source;
                	  self.audit.enabled = self.audits[i].ipAddress;
                	  self.audit.enabled = self.audits[i].email;
                	  self.audit.enabled = self.audits[i].description;
                     break;
                  }
              }
          };
              
          self.remove = function(id){
              console.log('id to be deleted', id);
              for(var i = 0; i < self.audits.length; i++){
                  if(self.audits[i].id == id) {
                     self.reset();
                     break;
                  }
              }
              self.deleteAudit(id);
          };

          
          self.reset = function(){
        	  self.audit={id:null ,name:'' ,comment:'', enabled:''};
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
