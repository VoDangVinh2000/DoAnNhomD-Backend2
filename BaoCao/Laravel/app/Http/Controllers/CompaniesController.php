<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Validator;
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
    public  function editCompanies(Request $res)
    {    
        $company_id = $res->input('company_id');
        // dd($company_id);
        $company_name = $res->input('company_name');
        $company_web = $res->input('company_web');
        $company_address =  $res->input('company_address');
        $company_code =  $res->input('company_code');
        $company_phone =  $res->input('company_phone');
        
        DB::update('update companies set company_name = ?, company_web = ?, company_address = ?, company_code = ?, company_phone = ? where company_id = ?', 
        [$company_name,$company_code, $company_phone, $company_address, $company_web,$company_id]);
        return redirect('companies/')->with('success','Data updated');
        // if ($res->isMethod('post')) {
        //     $allValue = Validator::make($res->all(), [
        //         'name' => 'required',
        //         'web' => 'required',
        //         'address' => 'required',
        //         'code' => 'required',
        //         'phone' => 'required|min:10|max:10'              
        //     ]);
        //     if ($allValue->fails()) {
        
        //         return redirect('/companies')->withErrors($allValue)->withInput();
               
        //     }
        //     else {
                
        //         $companies = Companies::find($res->input('id'));
        //         $companies->company_name = $res->input('name');
        //         $companies->company_web = $res->input('web');
        //         $companies->company_address =  $res->input('address');
        //         $companies->company_code =  $res->input('code');
        //         $companies->company_phone =  $res->input('phone');
        //         $companies->updated_at = now();
        //         $companies->save();
        //     }
        // } else {
        //     return redirect('/companies');
        // }
    }

}
