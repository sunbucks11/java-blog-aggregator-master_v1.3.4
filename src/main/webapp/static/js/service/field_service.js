'use strict';

App.factory('FieldService', ['$http', '$q', function($http, $q){

	var ipAddress = 'localhost';
	var portNum = 8080;

	return {
		
			fetchAllFields: function() {
						return $http.get('http://' + ipAddress + ':' + portNum + '/field/')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching fields');
										return $q.reject(errResponse);
									}
							);
			},
		    
		    createField: function(field){
					return $http.post('http://' + ipAddress + ':' + portNum + '/field/', field)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating field');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateField: function(field,id, enabled){
		    		 return $http.put('http://' + ipAddress + ':' + portNum + '/field/'+id, field, "true")
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Enabled: ' + self.field.enabled);
										console.error('Error while updating field');
										return $q.reject(errResponse);
									}
							);
			},
		    
			deleteField: function(id){
					 return $http.delete('http://' + ipAddress + ':' + portNum + '/field/'+id)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while deleting field');
										return $q.reject(errResponse);
									}
							);
			}
		
	};

}]);

