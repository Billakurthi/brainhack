(function () {

    'use strict';

    function giphySearchService($http)

     {

        var ApiCallUrl = "";
        var endpoint = "";


        //GET SEARCH RESULTS
        var getGifResults = function (searchString, resultsLimit, searchRating) {

            endpoint = 'search';

            try{
                if ((searchRating) != '') {
                    searchRating = '&rating=' + searchRating;
                } else {
                    searchRating = searchRating;
                }
            }
            catch (ex) {
                console.log(ex.message);
            }
						
			ApiCallUrl = BASE_URL + endpoint + '?q=' + searchString + '&limit=' + resultsLimit + searchRating + '&api_key=' + PUBLIC_KEY;

			console.log(ApiCallUrl);

			return triggerApiCall(ApiCallUrl);
			
        };



        //GET TRENDING RESULTS
        var getGifResults = function (resultsLimit, searchRating) {

            endpoint = 'trending';
            if ((searchRating) != '') {
                searchRating = '&rating=' + searchRating;
            } else {
                searchRating = searchRating;
            }

            ApiCallUrl = BASE_URL + endpoint +'?'+ '&api_key=' + PUBLIC_KEY + searchRating + '&limit=' + resultsLimit;

            console.log("resLimit" + resultsLimit + "--" + endpoint + "--rating--" + searchRating);
            console.log(ApiCallUrl);

            return triggerApiCall(ApiCallUrl);

        };


        //Single Api Call for all the results
        var triggerApiCall = function (ApiCallUrl) {

            return $http.get(ApiCallUrl)
                    .then(function (response) {
                        return response.data.data;
                    })
                    
        };//end triggerApiCall



        return {

            //polymorphic function
            //3- parameters search
            //2- parameters trending
            getGifResults: getGifResults
        };

    };

    var myApp = angular.module('myApp');

    myApp.factory('giphySearchService', ['$http', giphySearchService]);
		
	const PUBLIC_KEY = 'dc6zaTOxFJmzC';
	const BASE_URL = 'http://api.giphy.com/v1/gifs/';	


})();