//Declaring an IFFE function
(function () { 
    'use strict';

    var myApp = angular.module('myApp',[]);




    var giphySearchCtrl = function ($scope, giphySearchService) {
        $scope.count = 0;
		
		$scope.readEndPoints = ["Search",
								"Trending",
								"Translate",
								"Random",
								"GIF by id",
								"GIFs by id",
								"Stickers"];
								
								
							var	searchRange = [];
								for(var i=10;i<=100;i=i+10){
									searchRange.push(i);
								}			
								$scope.resultsRange = searchRange;

$scope.selectedName = "Search";

			$scope.resultsLimit = {value : 30};		
		
        $scope.searchGiphyDB = function () {
            $scope.count++;
			if(($scope.inputGiphySearch) === undefined){
				return 0;
			}else if (($scope.inputGiphySearch).length != 0) {
					var inputString = ($scope.inputGiphySearch).replace(/ /g, "+")
				var d = $scope.resultsLimit.value;
				triggerSearch(inputString,d);
			
			}
			
        };

		var triggerSearch = function(searchString,d){
			
			giphySearchService
            .result(searchString,d)
            .then(function (recievedData) {
                //initializing a promise to recieve the data in the future
            $scope.results = recievedData;
        });
			
			
		};
		
	
        

        
    };   

   
    myApp.controller('giphySearchCtrl', ['$scope', 'giphySearchService', giphySearchCtrl]);



})();
