<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class product extends Model {

	//
	protected $table = "product";
	public $timestamps = false;

	public static function isValidOrder($id, $quantity){
		$product = product::find($id);
		if (!empty($product)){
			if ($product->stock >= $quantity)
				return true;
		}
		return false;
	}

	public static function order($id, $quantity){
		$product = product::find($id);
		if (product::isValidOrder($id, $quantity)){
			$product->stock -= $quantity;
			$product->save();
			return true;
		} 
		return false;
	}

}
