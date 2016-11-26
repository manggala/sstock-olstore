<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\payment;
class OrderValidationController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
		return response(payment::orderBy('id', 'desc')->get());
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
		return response(payment::find($id));
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

	public function validate($id, $status){
		$payment = payment::find($id);
		if (!empty($payment)){
			$payment->status = 5;
			$payment->save();
			return response(['status' => true]);
		}
		return response(['status' => false]);
	}
	public function cancel($id, $status){
		$payment = payment::find($id);
		if (!empty($payment)){
			$payment->status = 5;
			$payment->save();
			return response(['status' => true]);
		}
		return response(['status' => false]);
	}
}
