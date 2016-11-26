var datas;
angular.module('myApp', []).controller('productsController', function($scope, $http) {
	$http({method:'GET', url: base_core+'/product'}).success(function(response){
		$scope.response = response;
	});
	$scope.addToOrder = function(id){
		var dataToSend = $.param({
            id: id,
            quantity: 1
        });
    	datas = dataToSend;
        var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }
		$http.post(base_core + '/product/addToOrder', dataToSend, config).success(function(data, status) {
			if (data['status'] == true)
				window.location.replace(base_app + 'cart');
        })
	}
});