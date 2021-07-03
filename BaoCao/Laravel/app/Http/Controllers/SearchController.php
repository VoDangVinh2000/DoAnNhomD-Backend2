<?php

namespace App\Http\Controllers;

use App\Models\Companies;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    //
    public function search(Request $request){
        $per_page = $request->get('per_page');
        $obj = new Companies();
         $name = $request->get('name');
        $companies = $obj->where('company_name','like',"%$name%")->paginate($per_page);
          $companies->appends(['name' => $name]);
        return view('search',['companies' => $companies]);
      //  echo "aaa";
        // $companies =  DB::table('companies')->simplePaginate(5);
        // return view('companies',['companies' =>  $companies]);
    }
}
