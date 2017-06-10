//Declaring an IFFE function
(function () { 
    'use strict';

    var myApp = angular.module('myApp',[]);




    var giphySearchCtrl = function ($scope, giphySearchService) {
        $scope.count = 0;
        $scope.searchGiphyDB = function () {
            $scope.count++;
			if(
				(($scope.inputGiphySearch).length != 0) 
						&& 
				(($scope.inputGiphySearch) != undefined)
				){
				
				triggerSearch($scope.inputGiphySearch)
			
			}
			
        };

		var triggerSearch = function(searchString){
			
			giphySearchService
            .result(searchString)
            .then(function (recievedData) {
                //initializing a promise to recieve the data in the future
            $scope.results = recievedData;
        });
			
			
		};
		
	
        

        
    };   

   
    myApp.controller('giphySearchCtrl', ['$scope', 'giphySearchService', giphySearchCtrl]);



})();
