<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Companies;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
class CompaniesController extends Controller
{
    public function getCompanies(Request $request){
        $per_page = $request->input('per_page');
        $obj = new Companies();
        $companies = $obj->paginate($per_page);
         $name = $request->get('search');
         $companies = $obj->where('company_name','like',"%$name%")->paginate($per_page);
         $companies->appends(['search' => $name]);
        return view('companies',['companies' => $companies]);
    }
    public function index(Request $res){
        if(Session::has('username')){
            return $this->getCompanies($res);
        }
        else{
            return redirect('/login');
        }
    }

    //
}
