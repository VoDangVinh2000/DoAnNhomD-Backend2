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
         $companies = $obj->where('company_name','like',"%$name%")->orderBy('created_at','DESC')->paginate($per_page);
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
    protected function addCompanies(Request $res){
        if($res->isMethod('POST')){
            $name = $res->name;
            $web = $res->web;
            $address = $res->address;
            $code = $res->code;
            $phone  = $res->phone;
            $companies = Companies::create([
                'company_name' => $name,
                'company_web' =>$web,
                'company_address' =>$address,
                'company_code' =>$code,
                'company_phone' => $phone,
                'company_image' => "",
                'timestamp' => now()
            ]);
            return redirect('companies');
        }
        else{
            return redirect('/companies');
        }

    }
}
