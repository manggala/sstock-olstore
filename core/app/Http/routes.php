<?php
Route::resource('/coupon', 'CouponController');
Route::get('/', function(){
	return redirect ('/product');
});

Route::resource('/product', 'ProductController');
Route::post('/product/addToOrder', 'ProductController@addToOrder');

Route::resource('/bank', 'BankController');
?>