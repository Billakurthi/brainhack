(function () {

    'use strict';

    function giphySearchService($http)

     {

        var searchQuery =""; 

        var result = function (searchString,resultsLimit,searchRating) {
			
			console.log("resLimit"+resultsLimit+"--"+searchString+"--rating--"+searchRating);
			
			searchQuery = BASE_URL+ENDPOINT+'?q='+searchString+'&limit='+resultsLimit+'&rating='+searchRating+'&api_key='+PUBLIC_KEY;
			console.log(searchQuery);

            return ($http.get(searchQuery)
                .then(

                function (response) {
                    console.log(response.data.data);
                    return response.data.data;

                })
                );
        };

        var getTrending = function(){

            return ($http.get('http://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC')
                .then(
                function (response) {
                    console.log("trending data"+response.data.data);
                    return response.data.data;

                })
                );

        }

        return {
            result: result,
            getTrending: getTrending
        };

    };

    var myApp = angular.module('myApp');

    myApp.factory('giphySearchService', ['$http', giphySearchService]);
		
	const PUBLIC_KEY = 'dc6zaTOxFJmzC';
	const BASE_URL = 'http://api.giphy.com/v1/gifs/';
	const ENDPOINT = 'search';
	
	
	


})();