'use strict';

App.factory('UserService', ['$http', '$q', function($http, $q){

	var ipAddress = 'localhost';
	var portNum = 8080;
	
	return {
		
			fetchAllUsers: function() {
				 		return $http.get('http://' + ipAddress + ':' + portNum +'/user/')
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
					  return $http.post('http://' + ipAddress + ':' + portNum +'/user/', user)
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
		    		 return $http.put('http://' + ipAddress + ':' + portNum + '/user/'+id, user)
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
	    		 return $http.put('http://' + ipAddress + ':' + portNum + '/add-role/'+ selectedUser.id, role)
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
			  return $http.put('http://'+ ipAddress + ':' + portNum + '/delete-role/'+ roleId, selectedRoleUserEmail)
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
		
			

	
	
     updateTwoAuth: function(user,id, enabled){
		 return $http.put('http://'+ ipAddress + ':' + portNum + '/twoAuth/'+id, user, "true")
				.then(
						function(response){
							return response.data;
						}, 
						function(errResponse){
							console.error('Enabled: ' + self.user.enabled);
							console.error('Error while updating field');
							return $q.reject(errResponse);
						}
				);
    	},
	
	
	

		    
	   deleteUser: function(id){
		   return $http.delete('http://'+ ipAddress + ':' + portNum + '/user/'+id)
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

