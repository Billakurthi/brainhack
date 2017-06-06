
//Declaring an IFFE function
(function () {

    var app = angular.module("myApp", []);
    
    app.controller("myCtrl", function ($scope,$http) {
            



            
                $http.get('http://rest-service.guides.spring.io/greeting').
                    then(function(response) {
                       

                        $scope.firstName = response.data.content;
                        $scope.lastName = response.data.id;
                    });
           


        });
    
})();