<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class coupon extends Model {

	//
	protected $table = "coupon";

	public static function isValid($id){
		$coupon = coupon::find($id);
		if (!empty($coupon)){
			if ($coupon->quantity > 0 && date('Y-m-d H:i:s') > $coupon->available_from && date('Y-m-d H:i:s') < $coupon->available_until)
				return true;
		}
		return false;
	}

}
