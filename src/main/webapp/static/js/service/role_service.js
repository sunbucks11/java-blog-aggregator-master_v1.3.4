'use strict';

App.factory('RoleService', ['$http', '$q', function($http, $q){

	return {
		
			fetchAllRoles: function() {
				      return $http.get('http://localhost:8080/admin-tool/role/')
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
					return $http.post('http://localhost:8080/admin-tool/role/', role)
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
					return $http.put('http://localhost:8080/admin-tool/role/'+id, role)
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
					return $http.delete('http://localhost:8080/admin-tool/role/'+id)
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

