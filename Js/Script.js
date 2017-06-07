
//Declaring an IFFE function
(function () {

    var app = angular.module("myApp", []);
    
    app.controller("myCtrl", function ($scope, $http) {
        $scope.count = 0;
        $scope.searchGiphyDB = function () {
            $scope.count++;
        };
            



            
        $http.get('http://api.giphy.com/v1/gifs/search?q=funny+sex&limit=20&api_key=dc6zaTOxFJmzC').
                    then(function(response) {
                        var results = response.data.data;

                        $scope.results = results;                      

                      
                    });
           


        });
    
})();