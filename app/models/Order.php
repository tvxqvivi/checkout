<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

class Order extends Eloquent{

	public $timestamps = true;

	protected $fillable = ['customer','customer_name','total'];

	protected $table = 'order';

}