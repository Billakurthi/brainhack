(function () {

    'use strict';

    function giphySearchService($http)

     {

        var searchQuery =""; 

        var result = function (searchString,resultsLimit) {
			
			console.log("resLimit"+resultsLimit+"--"+searchString);
			
			searchQuery = BASE_URL+ENDPOINT+'?q='+searchString+'&limit='+resultsLimit+'&api_key='+PUBLIC_KEY;
			console.log(searchQuery);

            return ($http.get(searchQuery)
                .then(

                function (response) {
                    console.log(response.data.data);
                    return response.data.data;

                })
                );
        };

        return {
            result: result
        };

    };

    var myApp = angular.module('myApp');

    myApp.factory('giphySearchService', ['$http', giphySearchService]);
		
	const PUBLIC_KEY = 'dc6zaTOxFJmzC';
	const BASE_URL = 'http://api.giphy.com/v1/gifs/';
	const ENDPOINT = 'search';
	
	
	


})();