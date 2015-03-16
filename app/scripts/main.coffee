app = angular.module "racoon" , ["ui.router"]


app.config ($stateProvider, $urlRouterProvider) ->


  $stateProvider.state('dummy',
      url: "/dummy",
      templateUrl: "views/dummy_text.html"
  )
  .state('modals'
      url: "/modals",
      templateUrl: "views/modals.html"
  )
  $urlRouterProvider.otherwise("/")



app.controller "BodyController", ["$scope", ($scope)=>
  $scope.dummy = "Morphing Button "
  $scope.modalState = "closed";
  $scope.toggleState = () ->
    $scope.modalState =  if $scope.modalState == "closed" then "opened" else "closed"
]
