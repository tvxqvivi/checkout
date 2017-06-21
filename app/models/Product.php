<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

class Product extends Eloquent{

	public $timestamps = true;

	protected $fillable = ['pro_ID','pro_name','pro_price'];

	protected $table = 'product';

}