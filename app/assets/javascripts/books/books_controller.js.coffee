BookAppCtrls = angular.module('BookAppCtrls', [])

BookAppCtrls.controller("BooksCtrl", ["$scope", "$routeParams", "$http",
    ($scope, $routeParams, $http)->
        $scope.message = "Hello world!"

        $scope.fakeBooks = [
                              id: 1
                              title: "Happy Tails"
                              description: "happy times"
                            ,
                              id: 2
                              title: "Bog Adventures"
                              description: "muddy days"
                            ]

        $http.get("/books.json").success (response)->
          $scope.fakeBooks = $scope.fakeBooks.concat response 
          console.log($scope.fakeBooks)

])