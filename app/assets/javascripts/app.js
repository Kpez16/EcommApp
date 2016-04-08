var app = angular.module('shop', []);

$(document).on('ready page:load', function() {
    angular.bootstrap(document.body, ['shop'])
});

app.factory('models', [function(){
    var x = {
        orders: []
    };
    return x;
}]);

app.controller('OrdersCtrl', ['$scope', function($scope) {
    //Code belonging to OrdersCtrl controller
    $scope.orders =[
        {id: 1, total: 24, product_id: 1, user_id: 1},
        {id: 2, total: 7, product_id: 1},
        {id: 3, total: 42, product_id: 1, user_id: 1}
    ];
    //Add order
    $scope.addOrder = function() {
        if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){ return;}
        $scope.orders.push($scope.newOrder);
    };
    //Delete order
    $scope.deleteOrder = function(order) {
        $scope.orders.splice($scope.orders.indexOf(order), 1);
    }
}]);