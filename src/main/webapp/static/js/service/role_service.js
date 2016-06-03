'use strict';

App.factory('RoleService', ['$http', '$q', function($http, $q){

	var ipAddress = 'localhost';
	var portNum = 8080;
	
	return {
		
			fetchAllRoles: function() {
						return $http.get('http://' + ipAddress + ':' + portNum + '/role/')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching roles');
										return $q.reject(errResponse);
									}
							);
			},
		    
		    createRole: function(role){
					return $http.post('http://' + ipAddress + ':' + portNum + '/role/', role)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating role');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateRole: function(role, id){
		    		 return $http.put('http://' + ipAddress + ':' + portNum + '/role/'+id, role)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while updating role');
										return $q.reject(errResponse);
									}
							);
			},
		    
			deleteRole: function(id){
					 return $http.delete('http://' + ipAddress + ':' + portNum + '/role/'+id)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while deleting role');
										return $q.reject(errResponse);
									}
							);
			}
		
	};

}]);

