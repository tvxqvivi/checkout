<!DOCTYPE html>

<html>
  <head>
    <meta charset="UTF-8">
    <title>GDP - Checkout</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  </head>
 
  <body>
    <div>
      <div>
        <section>
          <div>
					  <div>
							<b>GDP Checkout</b>
					  </div><br>
					  <div>
							<div>
								@if ($errors->has())
									<div class="alert alert-danger">
										@foreach ($errors->all() as $error)
											{{ $error }}<br>        
										@endforeach
									</div><br>
								@elseif(Session::has('success'))
									<div class="alert alert-success">
										{{ Session::get('success') }}
									</div><br>
								@elseif(Session::has('fail'))
									<div class="alert alert-danger">
										<a href="#" class="close" data-dismiss="alert">&times;</a>
										{{ Session::get('fail') }}
									</div><br>
								@elseif (Session::has('message'))
									<div class='bg-danger alert'>{{ Session::get('message') }}</div><br>
								@endif            
							</div>
						
							{{ Form::open(['url' => '/checkout','method' => 'POST']) }}
								<div class="form-group">
				          <label for="customer" class="control-label">Customer</label>
				          <div>
				            <select class="form-control" name="customer" id="customer" required>
				              <option>Select Customer</option>
				              <option value="1">Alice</option>
				              <option value="2">Unilever</option>
				              <option value="3">Apple</option>
				              <option value="4">Nike</option>
				              <option value="5">Ford</option>
				            </select>
				          </div>
				        </div><br>
								
								<div class="form-group">
									<label for="product" class="control-label">Product</label>
									<br><span>Notes : 1 = Classic Ads , 2 = Standout Ads , 3 = Premium Ads</span>
									<br><span>Example : 1,2,2,3,3,3 (1 classic ad, 2 standout ads, 3 premium ads)</span>
									<br><span>Please follow the format of Example above to fill in the Product field.</span>
									<br><input class="form-control" id="product" name="product" placeholder="Product" required/>
							  </div><br>

							  <div class="row">
								  <button type="submit">Checkout</button>
							  </div>
							{{ Form::close() }}
					  </div>
					</div>
        </section>
      </div>
    </div>
  </body>
</html>