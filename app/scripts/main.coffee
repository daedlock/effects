app = angular.module "racoon" , ["ui.router"]

app.controller "BodyController", ["$scope", ($scope)=>
  $scope.dummy = "Hossam Saraya"
]
