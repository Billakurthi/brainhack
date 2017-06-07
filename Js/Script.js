
//Declaring an IFFE function
(function () {

    var app = angular.module("myApp", []);
    
    app.controller("myCtrl", function ($scope,$http) {
            



            
        $http.get('http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC').
                    then(function(response) {
                        var results = response.data.data;

                        $scope.results = results;

                        //var resultsLength = results.length;

                        //if (resultsLength) {

                        //    for (var i = 0 ; i < resultsLength ; i++)
                        //    {
                        //        console.log(results[i].id.toString());
                        //    }
                        //}

                        $scope.firstName = response.data.content;
                        $scope.lastName = response.data.id;
                    });
           


        });
    
})();