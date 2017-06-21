<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

class Customer extends Eloquent{

	public $timestamps = true;

	protected $fillable = ['name','email','contact','address'];

	protected $table = 'customer';

}