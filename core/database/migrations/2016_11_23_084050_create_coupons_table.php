<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCouponsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('coupon', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('code');
			$table->string('name');
			$table->timestamp('available_from');
			$table->timestamp('available_until');
			$table->integer('quantity');
			$table->integer('coupon_type_id');
			$table->integer('status_id');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('coupon');
	}

}
