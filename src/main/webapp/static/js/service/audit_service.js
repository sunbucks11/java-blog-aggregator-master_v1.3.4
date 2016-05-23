'use strict';

App.factory('AuditService', ['$http', '$q', function($http, $q){

	return {
		
			fetchAllAudits: function() {
				      /*return $http.get('http://localhost:8080/admin-tool/audit/')*/
						return $http.get('http://localhost:8080/audit/')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching audits');
										return $q.reject(errResponse);
									}
							);
			},
		    
		    createAudit: function(audit){
					/*return $http.post('http://localhost:8080/admin-tool/audit/', audit)*/
					return $http.post('http://localhost:8080/audit/', audit)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating audit');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateAudit: function(audit, id){
					/*return $http.put('http://localhost:8080/admin-tool/audit/'+id, audit)*/
		    		 return $http.put('http://localhost:8080/audit/'+id, audit)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while updating audit');
										return $q.reject(errResponse);
									}
							);
			},
		    
			deleteAudit: function(id){
					/*return $http.delete('http://localhost:8080/admin-tool/audit/'+id)*/
					 return $http.delete('http://localhost:8080/audit/'+id)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while deleting audit');
										return $q.reject(errResponse);
									}
							);
			}
		
	};

}]);

