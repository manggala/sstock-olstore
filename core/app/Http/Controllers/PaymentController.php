<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\order;
use App\payment;
use App\bank;
use App\coupon_payment;
use App\user;
use App\proof;
class PaymentController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
		$user_id = 1;
		$data['payment'] = payment::getActivePayment($user_id);
		$data['user'] = user::find($user_id);
		$data['banks'] = bank::all();
		if (!empty($data['payment'])){
			$data['coupon'] = coupon_payment::where('payment_id', $data['payment']->id)->first();
			$data['orders'] = order::where('payment_id', $data['payment']->id)->get();
		}
		return response($data);
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

	public function checkout(){
		$user_id = 1;
		$payment = payment::getActivePayment($user_id);
		$payment->name = Input::get('name');
		$payment->phone = Input::get('phone');
		$payment->email = Input::get('email');
		$payment->address = Input::get('address');
		$payment->bank_id = Input::get('bank_id');
		$payment->status = 13;
		$payment->save();
	}

	public function confirmationRequest(){
		$user_id = 1;
		$code = Input::get('code');
		$payment = payment::where('code', $code)->first();
		if (!empty($payment)){
			$existedProof = proof::where('payment_id', $payment->id);
			if (empty($existedProof)){
				$proof = new proof;
				$proof->payment_id = $payment->id;
				$proof->user_id = $user_id;
			} else {
				return response(['status' => 'existed']);
			}
		}
		return response(['status' => 'not_found']);
	}
}
