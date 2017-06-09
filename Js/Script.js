//Declaring an IFFE function
(function () { 
    'use strict';

    var myApp = angular.module('myApp', []);




    myApp.controller('myCtrl', ['$scope', 'giphySearchService', function ($scope, giphySearchService) {
        $scope.count = 0;
        $scope.searchGiphyDB = function () {
            $scope.count++;
        };
        giphySearchService.result().then(function (data) {
            var gotres = data;
            console.log("gotres" + gotres);
            $scope.results = gotres;
        });

        
    }]);




    

    myApp.factory('giphySearchService', ['$http', function giphySearchService($http) {

        var apiQ = 'http://api.giphy.com/v1/gifs/search?q=good%20night&limit=100&api_key=dc6zaTOxFJmzC';

        var result = function () {

            

            return ($http.get(apiQ)
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

    }]);




})();
