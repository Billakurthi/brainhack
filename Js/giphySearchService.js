(function () {

    'use strict';

    function giphySearchService($http) {

        var ApiCallUrl = "";
        var endpoint = "";

        var getGifResults = function (selectedEndPoint, resultsLimit, selectedRating, searchString) {


<<<<<<< HEAD
            try {
                if ((selectedRating) != 'all') {
                    selectedRating = '&rating=' + selectedRating;
                } else {
                    selectedRating = '';
=======
            try{
                if ((searchRating) != '') {
                    searchRating = '&rating=' + searchRating;
                } else {
                    searchRating = searchRating;
>>>>>>> 6f50402cf62cd9cec0d2b56e3f770d66a37af811
                }
            }
            catch (ex) {
                console.log(ex.message);
            }


            endpoint = selectedEndPoint.toLowerCase();

            if (endpoint == 'trending') {

                //GET TRENDING RESULTS
                ApiCallUrl = BASE_URL + endpoint + '?' + '&api_key=' + PUBLIC_KEY + selectedRating + '&limit=' + resultsLimit;

                console.log("resLimit" + resultsLimit + "--" + endpoint + "--rating--" + selectedRating);
                console.log(ApiCallUrl);

<<<<<<< HEAD
                return triggerApiCall(ApiCallUrl);


            } else if (endpoint == 'search') {


                //GET SEARCH RESULTS
=======
            endpoint = 'trending';
            if ((searchRating) != '') {
                searchRating = '&rating=' + searchRating;
            } else {
                searchRating = searchRating;
            }
>>>>>>> 6f50402cf62cd9cec0d2b56e3f770d66a37af811


                ApiCallUrl = BASE_URL + endpoint + '?q=' + searchString + '&limit=' + resultsLimit + selectedRating + '&api_key=' + PUBLIC_KEY;

                console.log(ApiCallUrl);

                return triggerApiCall(ApiCallUrl);


            }


        };


        //Single Api Call for all the results
        var triggerApiCall = function (ApiCallUrl) {

            return $http.get(ApiCallUrl)
                .then(function (response) {
                    return response.data.data;
                })

        };//end triggerApiCall



        return {
            getGifResults: getGifResults
        };

    };

    var myApp = angular.module('myApp');

    myApp.factory('giphySearchService', ['$http', giphySearchService]);

    const PUBLIC_KEY = 'dc6zaTOxFJmzC';
    const BASE_URL = 'http://api.giphy.com/v1/gifs/';


})();