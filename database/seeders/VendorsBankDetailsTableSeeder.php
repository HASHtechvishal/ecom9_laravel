<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\VendorsBankDetail;

class VendorsBankDetailsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $vendorRecords = [
            ['id'=>1,'vendor_id'=>1,'account_holder_name'=>'John Cena','bank_name'=>'ICICI','account_number'=>'0243530500022','bank_ifsc_code'=>'24353563'],
        ];
        VendorsBankDetail::insert($vendorRecords);
    }
}
