<?php
Route::get('/', function(){
	return redirect ('/product');
});
Route::resource('/coupon', 'CouponController');
Route::get('/coupon/addCoupon/{code}', 'CouponController@addCoupon');
Route::get('/coupon/deleteCoupon', 'CouponController@deleteCoupon');
Route::resource('/product', 'ProductController');
Route::post('/product/addToOrder', 'ProductController@addToOrder');

Route::resource('/bank', 'BankController');
Route::resource('/order', 'OrderController');
Route::resource('/validation', 'OrderValidationController');
Route::get('/validation/validate/{id}/{status}', 'OrderValidationController@validate');

Route::resource('/payment', 'PaymentController');
Route::post('/payment/checkout', 'PaymentController@checkout');
Route::post('/payment/confirmationRequest', 'PaymentController@confirmationRequest');

Route::resource('/proof', 'ProofController');
Route::resource('/user', 'UserController');


?>