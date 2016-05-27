'use strict';

App.factory('UserService', ['$http', '$q', function($http, $q){

	return {
		
			fetchAllUsers: function() {
				     /* return $http.get('http://localhost:8080/admin-tool/user/')*/
				 		return $http.get('http://localhost:8080/user/')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching users');
										return $q.reject(errResponse);
									}
							);
			},
		    
		    createUser: function(user){
					/*return $http.post('http://localhost:8080/admin-tool/user/', user)*/
					  return $http.post('http://localhost:8080/user/', user)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating user');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateUser: function(user, id){
					/*return $http.put('http://localhost:8080/admin-tool/user/'+id, user)*/
		    		 return $http.put('http://localhost:8080/user/'+id, user)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while updating user');
										return $q.reject(errResponse);
									}
							);
			},
			
			
			
			
			
			
			// Add User Role
		    updateUserRole: function(user, role){
				/*return $http.put('http://localhost:8080/admin-tool/user/'+id, user)*/
	    		 return $http.put('http://localhost:8080/add-role/'+ selectedUser.id, role)
						.then(
								function(response){
									return response.data;
								}, 
								function(errResponse){
									console.error('Error while updating user role');
									return $q.reject(errResponse);
								}
						);
		},
			
		
		
		
		
		
		deleteUserRole: function(roleId, selectedRoleUserEmail){
			  return $http.put('http://localhost:8080/delete-role/'+ roleId, selectedRoleUserEmail)
					.then(
							function(response){
								return response.data;
							}, 
							function(errResponse){
								/*
								console.log("Role's to be id in Service: " + roleId);
								console.log("User's id in Service: " + user.id);
								console.log("User's name in Service: " + user.name);
								console.log("User's email in Service: " + user.email);
								console.error('Error Message : ' + errResponse);
								*/
								console.error('Error while deleting user role');
								
								return $q.reject(errResponse);
							}
					);
	},
		
			
			
			
			
			
			
			
			
		    
			deleteUser: function(id){
					/*return $http.delete('http://localhost:8080/admin-tool/user/'+id)*/
					  return $http.delete('http://localhost:8080/user/'+id)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while deleting user');
										return $q.reject(errResponse);
									}
							);
			}
		
	};

}]);

