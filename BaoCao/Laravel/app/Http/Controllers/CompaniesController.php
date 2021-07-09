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
    protected function editCompanies(Request $res)
    {
        if ($res->isMethod('post')) {
            $allValue = Validator::make($res->all(), [
                'nameEdit' => 'required|',
                'webEdit' => 'required',
                'addressEdit' => 'required',
                'codeEdit' => 'required|',
                'phoneEdit' => 'required|min:10|max:10|regex:/^[0-9]+$/',             
            ]);
            if ($allValue->fails()) {
                return redirect('/companies')->withErrors($allValue)->withInput();
            }
            else {
                $companies = Companies::find($res->input('idEdit'));
                $companies->company_name = $res->input('nameEdit');
                $companies->company_code = $res->input('codeEdit');
                $companies->company_phone =  $res->input('phoneEdit');
                $companies->company_address =  $res->input('addressEdit');
                $companies->company_web =  $res->input('webEdit');
                $companies->updated_at = now();          
            }
        } else {
            return redirect('/companies');
        }
    }

}
