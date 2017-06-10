(function () {

    'use strict';

    function giphySearchService($http)

     {

        var apiQ = 'http://api.giphy.com/v1/gifs/search?q=good%20night&limit=20&api_key=dc6zaTOxFJmzC';

        var result = function () {



            return ($http.get(apiQ)
                .then(

                function (response) {
                    
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


})();