<div><b>Checkout Information</b></div>
<div>
	<span>Order ID : {{ $latestOrder->id }}</span><br>
	<span>Customer ID : {{ $latestOrder->customer }}</span><br>
	<span>Customer Name : {{ $latestOrder->customer_name }}</span><br>
	<span>SKUs Scanned : {{ $SKUs }}</span><br>
	<span>Total Expected : {{ $latestOrder->total }}</span><br>
</div>
<div>
	<br><button type="button" onclick="window.location='{{ URL::to('/') }}'">Add New Order</button>
</div>