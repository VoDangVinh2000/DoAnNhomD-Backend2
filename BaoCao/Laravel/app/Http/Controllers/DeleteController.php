<?php

namespace App\Http\Controllers;

use App\Models\Companies;
use Illuminate\Http\Request;


class DeleteController extends Controller
{
    public function destroy(Request $request)
    {
        $obj = new Companies();
        $id = $request->get('id');
        $companies = $obj->where('company_id',[$id]);
    }
}
