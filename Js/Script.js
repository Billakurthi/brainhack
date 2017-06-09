//Declaring an IFFE function
(function () { 
    'use strict';

    var myApp = angular.module('myApp',[]);




    var myCtrl =  function ($scope, giphySearchService) {
        $scope.count = 0;
        $scope.searchGiphyDB = function () {
            $scope.count++;
        };

        giphySearchService
            .result()
            .then(function (recievedData) {
                //initializing a promise to recieve the data in the future
            $scope.results = recievedData;
        });

        
    };   

   
    myApp.controller('myCtrl', ['$scope', 'giphySearchService', myCtrl]);



})();
