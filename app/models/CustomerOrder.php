<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

class CustomerOrder extends Eloquent{

	public $timestamps = true;

	protected $fillable = ['order_ID','customer','customer_name','SKU'];

	protected $table = 'customer_order';

}