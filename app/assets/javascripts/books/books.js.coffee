BookApp = angular.module("BookApp", ['BookAppCtrls', "BookRouter", "BooksService"])

BookApp.config(["$httpProvider",
    ($httpProvider) ->
        $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])

BookRouter = angular.module("BookRouter", ["ngRoute"])

BookRouter.config(["$routeProvider", 
    ($routeProvider)->
      
      $routeProvider.when("/", 
          templateUrl: "/books" 
          controller: "BooksCtrl"
      )

      $routeProvider.when("/books/:id", 
                  templateUrl: "/books/show",
                  controller: "BooksCtrl"
      )
])