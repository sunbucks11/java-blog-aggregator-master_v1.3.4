'use strict';

App.factory('FieldService', ['$http', '$q', function($http, $q){

	return {
		
			fetchAllFields: function() {
				      /*return $http.get('http://localhost:8080/admin-tool/field/')*/
						return $http.get('http://localhost:8080/field/')
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
					/*return $http.post('http://localhost:8080/admin-tool/field/', field)*/
					return $http.post('http://localhost:8080/field/', field)
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
		    
		    updateField: function(field, id){
					/*return $http.put('http://localhost:8080/admin-tool/field/'+id, field)*/
		    		 return $http.put('http://localhost:8080/field/'+id, field)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while updating field');
										return $q.reject(errResponse);
									}
							);
			},
		    
			deleteField: function(id){
					/*return $http.delete('http://localhost:8080/admin-tool/field/'+id)*/
					 return $http.delete('http://localhost:8080/field/'+id)
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

