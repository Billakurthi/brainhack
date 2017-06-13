(function () {
  'use strict';
  function giphySearchService($http) {
    var ApiCallUrl = '';
    var endpoint = '';
    var getGifResults = function (selectedEndPoint, resultsLimit, selectedRating, searchString) {
      try {
        if ((selectedRating) != 'all') {
          selectedRating = '&rating=' + selectedRating;
        } else {
          selectedRating = '';
        }
      } 
      catch (ex) {
        console.log(ex.message);
      }
      endpoint = selectedEndPoint.toLowerCase();
      if (endpoint == 'trending') {
        //GET TRENDING RESULTS
        ApiCallUrl = BASE_URL + endpoint + '?' + '&api_key=' + PUBLIC_KEY + selectedRating + '&limit=' + resultsLimit;
        console.log('resLimit' + resultsLimit + '--' + endpoint + '--rating--' + selectedRating);
        console.log(ApiCallUrl);
        return triggerApiCall(ApiCallUrl);
      } else if (endpoint == 'search') {
        //GET SEARCH RESULTS
        ApiCallUrl = BASE_URL + endpoint + '?q=' + searchString + '&limit=' + resultsLimit + selectedRating + '&api_key=' + PUBLIC_KEY;
        console.log(ApiCallUrl);
        return triggerApiCall(ApiCallUrl);
      }
    };
    //Single Api Call for all the results
    var triggerApiCall = function (ApiCallUrl) {
      return $http.get(ApiCallUrl).then(function (response) {
        return response.data.data;
      })
    }; //end triggerApiCall
    return {
      getGifResults: getGifResults
    };
  };
  var myApp = angular.module('myApp');
  myApp.factory('giphySearchService', [
    '$http',
    giphySearchService
  ]);
  var PUBLIC_KEY = 'dc6zaTOxFJmzC';
  var BASE_URL = 'http://api.giphy.com/v1/gifs/';
}) ();
