//Declaring an IFFE function
(function ($) {
    'use strict';

    var myApp = angular.module('myApp', []);
    var selectedEndpoint = '';
    var giphySearchCtrl = function ($scope, giphySearchService) {
        $scope.count = 0;

        $scope.endPoints = ['Search', 'Trending'];
        // , 'Translate', 'Random', 'GIF by id', 'GIFs by id', 'Stickers'

        $scope.ratingOptions = {
            'All': 'all',
            'Unrated':'unrated',
            'Cartoon': 'y',
            'General': 'g',
            'Parental Guidance': 'pg',
            '13+ Only': 'pg-13',
            'Restricted': 'r'
        };


        var searchRange = [];
        for (var i = 10; i <= 100; i = i + 10) {
            searchRange.push(i);
        }

        $scope.resultsRange = searchRange;

        $scope.selectedEndpoint = {
            value: 'Trending'
        };

        $scope.resultsLimit = {
            value: 30
        };

        $scope.selectedRating = {
            value: 'all'
        };

//call giphysearch onpage load

 var triggerSearch = function(){


            var selectedEndpoint = String($scope.selectedEndpoint.value);


            console.log(selectedEndpoint);

            if (selectedEndpoint == 'Trending') {
                giphySearchService
                    .getGifResults(selectedEndpoint,$scope.resultsLimit.value, $scope.selectedRating.value,searchString)
                    .then(function (recievedData) {
                        console.log("treding values" + recievedData);
                        $scope.results = recievedData;
                        console.log($scope.results);
                    });
            } else if (selectedEndpoint == 'Search') {

                if (($scope.inputGiphySearch) === undefined){

                    return 0;

                } else if (($scope.inputGiphySearch).length != 0) {

                    var searchString = ($scope.inputGiphySearch).replace(/ /g, "+");

                    giphySearchService
                        .getGifResults(selectedEndpoint, $scope.resultsLimit.value, $scope.selectedRating.value,searchString)
                        .then(function (recievedData) {
                            //initializing a promise to recieve the data in the future
                            $scope.totalResults = (parseInt(recievedData.length));
                            $scope.results = recievedData;
                        });

                }

            }



 }

        $scope.searchGiphyDB = function () {

                 $scope.count++;
                 triggerSearch();
        };

        triggerSearch();

    };


    myApp.controller('giphySearchCtrl', ['$scope', 'giphySearchService', giphySearchCtrl]);

   
    myApp.config(function ($compileProvider) {
        //other configuration code here
        $compileProvider.aHrefSanitizationWhitelist(/^\s*(https?|ftp|mailto|file|whatsapp):/);

    })

    //code for sticky navigation

    //jquery code


    $(document).ready(function () {
        

        var mn = $(".GSstickyNav"),
        mns = "main-nav-scrolled",
        hdr = $('.main-nav').height();


        $(window).scroll(function () {
            if ($(this).scrollTop() > hdr) {
                mn.addClass(mns);
                
            } else {
                mn.removeClass(mns);
                
            }
        });

    });




})(jQuery);