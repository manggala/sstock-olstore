<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class order extends Model {

	protected $table = "order";
	public $timestamps = false;

	public static function isOrdered($id, $payment_id){
		if (order::where('id', $id)->where('payment_id', $payment_id)->count() > 0)
			return true;
		return false;
	}

}
