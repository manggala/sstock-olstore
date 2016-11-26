<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class payment extends Model {

	//
	protected $table = "payment";
	public $timestamps = false;
	public static function getActivePayment($id){
		return payment::where('user_id', $id)->where('status_id', 12)->first(); // Status ID 12: CART, it means that it is not payed yet
	}

}
