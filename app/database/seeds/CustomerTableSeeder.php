<?php
 
class CustomerTableSeeder extends Seeder {
 
    public function run()
    {
        DB::table('customer')->delete();

        Customer::create(array(
          'name' => 'Alice',
          'email' => 'alice@gmail.com',
          'contact' => '0123456999',
          'address' => 'A-1655, Jalan Haji Ahmad 22, 25300 Kuantan, Pahang'
        ));

        Customer::create(array(
          'name' => 'Unilever',
          'email' => 'unilever@gmail.com',
          'contact' => '0123456888',
          'address' => 'Level 34, Menara Telekom, Jalan Pantai Baru, 59200 Kuala Lumpur'
        ));

        Customer::create(array(
          'name' => 'Apple',
          'email' => 'apple@gmail.com',
          'contact' => '0123456777',
          'address' => 'Level 16, Block B, Northpoint Office, Medan Syed Putra Utara  59200, Kuala Lumpur'
        ));

        Customer::create(array(
          'name' => 'Nike',
          'email' => 'nike@gmail.com',
          'contact' => '0123456666',
          'address' => 'Unit 10-1 & 10-2, Level 10 Menara OBYU, No 4, Jalan PJU 8/8, Damansara Perdana, 47820 Petaling Jaya, Selangor'
        ));

        Customer::create(array(
          'name' => 'Ford',
          'email' => 'ford@gmail.com',
          'contact' => '0123456555',
          'address' => '1, Jalan Sesiku, Section 15/2, Shah Alam, 40000, Shah Alam, Selangor, Malaysia, 40000 Shah Alam'
        ));
    }
 
}