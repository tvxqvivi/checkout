<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCustomerOrderTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('customer_order', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('order_ID')->unsigned()->index();
			$table->integer('customer')->unsigned()->index();
			$table->string('customer_name');
			$table->string('SKU');
			$table->timestamps();

			$table->foreign('order_ID')->references('id')->on('order')->onDelete('cascade');
			$table->foreign('customer')->references('id')->on('customer')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('customer_order');
	}

}
