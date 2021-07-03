<?php

namespace App\Http\Controllers;

use App\Models\Trainers;
use Illuminate\Http\Request;

class TrainerController extends Controller
{
    //
    public function getTrainer(Request $request){
        $per_page = $request->input('per_page');
        $obj = new Trainers();
        $trainers = $obj->paginate($per_page);
        return view('trainers',['trainers' => $trainers]);
      //  echo "aaa";
        // $companies =  DB::table('companies')->simplePaginate(5);
        // return view('companies',['companies' =>  $companies]);
    }   
}
