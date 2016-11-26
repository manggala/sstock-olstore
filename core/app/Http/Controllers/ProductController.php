<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\product;
use App\order;
use App\payment;
use Input;
class ProductController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
		return response(Product::orderBy('id', 'desc')->get());
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
		return response(Product::find($id));
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

	public function addToOrder(){
		$userID = 1;

		$id = Input::get('id');
		$quantity = Input::get('quantity');
		$product = product::find($id);
		$responseStatus = 'false';
		if (!empty($product) && !empty($quantity)){
			$isValidOrder = $product->isValidOrder($id, $quantity);
			if ($isValidOrder){
				$product->stock -= $quantity;
				if ($this->makePayment($id, $quantity))
					$responseStatus = 'true';
				else 
					$responseStatus = 'false';
			}
		}
		return response(['status' => $responseStatus]);
	}

	function makePayment($id, $quantity){
		$user_id = 1;
		$payment = null;
		$activePayment = payment::getActivePayment($user_id);
		if (empty($activePayment)){
			$payment = new payment;
			$payment->user_id = $user_id;
			$payment->status_id = 12;
			$payment->save();
			$payment->code = "SSTCK-".$payment->id."-".$user_id;
			$payment->save();
		} else{
			$payment = $activePayment;
		}

		if (order::isOrdered($id, $payment->id)){
			if (product::order($id, $quantity)){
				$order = order::where('id', $id)->where('payment_id', $payment->id)->first();
				$order->quantity += $quantity;
				$order->save();
			} else return false;
		} else {
			$order = new order;
			$order->quantity = $quantity;
			$order->payment_id = $payment->id;
			$order->product_id = $id;
			$order->status_id = 0;
			$order->save();
		}
		return true;
	}
}
