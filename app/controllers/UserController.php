<?php

class UserController extends BaseController
{	
	// checkout API
	public function checkout()
	{
		$rules = array(
			'customer'	=> 'required:customer,name',
			'product'		=> 'required',
		);

		$validator = Validator::make(Input::all(), $rules);
		
		if($validator->passes())
		{
			$customer = Input::get('customer');
			$cust_record = Customer::where('id',$customer)->exists();
			$cust_db = Customer::where('id',$customer)->first();
			$classicPrice = Product::where('id',1)->pluck('pro_price');
			$standoutPrice = Product::where('id',2)->pluck('pro_price');
			$premiumPrice = Product::where('id',3)->pluck('pro_price');
			$classic = 0; $standout = 0; $premium = 0;

			// To check if the inserted customer ID exists or not
			if(!$cust_record){
				return Redirect::back()->withErrors('Customer '.$customer.' not found.');
			} else {

				$order = new Order;
				$order->customer = $customer;
				$order->customer_name = $cust_db->name;

				$product = Input::get('product');
				$splitProduct = explode(',', $product);
				
				foreach($splitProduct as $split)
				{
					$validProduct = Product::find($split);
					
					// To check if the inserted product ID is valid or not
					if(!$validProduct){
						return Redirect::back()->withErrors('Product '.$split.' not found.');
					} else {
						// Count the number of ads for each category
						if($split == 1)
							$classic++;
						else if($split == 2)
							$standout++;
						else if($split == 3)
							$premium++;
					}
				}

				// if customer is unilever
				if($customer == 2){
					// Gets a 3 for 2 deal on Classic Ads
					$mod = ($classic%3);
					$quotient = (($classic-$mod)/3);
					$total = (($classic-$quotient)*$classicPrice)+($standout*$standoutPrice)+($premium*$premiumPrice);
				}
				// if customer is apple
				else if($customer == 3)
				{
					// Gets discount on Standout Ads > 299.99 per ad
					$total = ($classic*$classicPrice)+($standout*299.99)+($premium*$premiumPrice);
				}
				// if customer is nike
				else if($customer == 4)
				{
					// Gets discount on Premium Ads when 4 or more are purchased > 379.99 per ad
					if($premium >= 4)
						$total = ($classic*$classicPrice)+($standout*$standoutPrice)+($premium*379.99);
					else
						$total = ($classic*$classicPrice)+($standout*$standoutPrice)+($premium*$premiumPrice);
				}
				// if customer is ford
				else if($customer == 5)
				{
					// Gets a 5 for 4 deal on Classic Ads
					$mod = ($classic%5);
					$quotient = (($classic-$mod)/5);
					// Gets discount on Standout Ads > 309.99 per ad
					// Gets discount on Premium Ads when 3 or more are purchased > 389.99 per ad
					if($premium >= 3)
						$total = (($classic-$quotient)*$classicPrice)+($standout*309.99)+($premium*389.99);
					else
						$total = (($classic-$quotient)*$classicPrice)+($standout*309.99)+($premium*$premiumPrice);
				}
				// if customer is not privileged customer
				else
				{
					$total = ($classic*$classicPrice)+($standout*$standoutPrice)+($premium*$premiumPrice);
				}

				$order->total = $total;

				if($order->save()){
					
					// To add each customer and each product in a customer_order table according to the Order_ID (One-to-One Relationship)
					foreach($splitProduct as $split)
					{
						$cust_order = new CustomerOrder;
						$cust_order->order_ID = $order->id;
						$cust_order->customer = $order->customer;
						$cust_order->customer_name = $order->customer_name;
						$cust_order->SKU = $split;
						$cust_order->save();
					}
					
					return Redirect::to('view-checkout');

				} else {
					return Redirect::back()->withErrors('Order failed. Please try again.');
				}
			}
		} else {
			return Redirect::back()->withErrors($validator);
		}
	}

	// view-checkout API
	public function viewcheckout()
	{
		$latestOrder = DB::table('order')
									->orderBy('created_at','desc')
									->select('order.id','order.customer','order.customer_name','order.total')
									->first();
		
		$latestOrderSKU = CustomerOrder::where('order_ID',$latestOrder->id)->lists('SKU');
		$SKU = array();
		foreach($latestOrderSKU as $split)
		{
			$perSKU = Product::where('id',$split)->pluck('pro_ID');
			array_push($SKU,$perSKU);
		}

		$SKUs = implode(',',array_values($SKU));
		
		return View::make('view-checkout',compact('latestOrder','SKUs'));
	}
}