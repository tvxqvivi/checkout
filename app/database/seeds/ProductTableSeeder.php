<?php
 
class ProductTableSeeder extends Seeder {
 
    public function run()
    {
        DB::table('product')->delete();

        Product::create(array(
          'id' => '1',
          'pro_ID' => 'classic',
          'pro_name' => 'Classic Ad',
          'pro_price' => '269.99'
        ));

        Product::create(array(
          'id' => '2',
          'pro_ID' => 'standout',
          'pro_name' => 'Standout Ad',
          'pro_price' => '322.99'
        ));

        Product::create(array(
          'id' => '3',
          'pro_ID' => 'premium',
          'pro_name' => 'Premium Ad',
          'pro_price' => '394.99'
        ));
    }
 
}