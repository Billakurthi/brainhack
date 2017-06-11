//Declaring an IFFE function
(function () {
	'use strict';

	var myApp = angular.module('myApp', []);




	var giphySearchCtrl = function ($scope, giphySearchService) {
		$scope.count = 0;

		$scope.readEndPoints = ['Search', 'Trending'];
		// , 'Translate', 'Random', 'GIF by id', 'GIFs by id', 'Stickers'

		$scope.ratingOptions = ['y', 'g', 'pg', 'pg-13', 'r'];


		var searchRange = [];
		for (var i = 10; i <= 100; i = i + 10) {
			searchRange.push(i);
		}
		$scope.resultsRange = searchRange;

		$scope.selectedName = { value: 'Trending' };

		$scope.resultsLimit = { value: 30 };

		$scope.selectRating = { value: 'y' };

		$scope.searchGiphyDB = function () {
			$scope.count++;
			if (($scope.inputGiphySearch) === undefined) {
				return 0;
			} else if (($scope.inputGiphySearch).length != 0) {
				var inputString = ($scope.inputGiphySearch).replace(/ /g, "+")

				triggerSearch(inputString, $scope.resultsLimit.value, $scope.selectRating.value);

			}

		};
		var x = String($scope.selectedName.value);


		$scope.getTrending = function (x) {
			console.log(x);
			if (x == 'Trending') {
				giphySearchService
					.getTrending()
					.then(function (recievedData) {

						console.log("treding values" + recievedData);
						$scope.results = recievedData;
						console.log($scope.results);
					});
			}
		}

		var triggerSearch = function (searchString, d, g) {

			giphySearchService
				.result(searchString, d, g)
				.then(function (recievedData) {
					//initializing a promise to recieve the data in the future
					$scope.results = recievedData;
				});


		};





	};


	myApp.controller('giphySearchCtrl', ['$scope', 'giphySearchService', giphySearchCtrl]);

myApp.config(function($compileProvider){
   //other configuration code here
   $compileProvider.aHrefSanitizationWhitelist(/^\s*(whatsapp):/);
})

})();
