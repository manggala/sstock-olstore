<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\payment;
use App\coupon;
use App\coupon_payment;
class CouponController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
		return response(coupon::orderBy('id', 'desc')->get());
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
		return response(Coupon::find($id));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}
	public function addCoupon($code){
		$user_id = 1;
		$payment = payment::getActivePayment($user_id);
		if (!empty($payment)){
			if ($this->check($code)){
				$coupon = coupon::where('code', $code)->first();
				$coupon->quantity--;
				$coupon->save();

				$coupon_payment = new coupon_payment;
				$coupon_payment->coupon_id = $coupon->id;
				$coupon_payment->payment_id = $payment->id;
				$coupon_payment->save();
			}
		}
	}
	public function check($code){
		$coupon = coupon::where('code', $code)->first();
		if (!empty($coupon)){
			if (coupon::isValid($coupon->id)){
				return true;
			}
		}
		return false;
	}
	
	public function deleteCoupon(){
		$user_id = 1;
		$payment = payment::getActivePayment($user_id);
		if (!empty($payment)){
			coupon_payment::where('payment_id')->delete();
		}
		return response(['status' = true]);
	}
}
