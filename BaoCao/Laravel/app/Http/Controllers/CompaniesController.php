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
    protected function getCompanies(Request $request)
    {
        // $per_page = $request->input('per_page');
        // $obj = new Companies();
        //$companies = $obj->paginate($per_page);
        $name = $request->get('search');
        //dd($name);
       $companies = Companies::whereRaw('company_name LIKE "%'.$name.'%" ')->paginate(15)->withQueryString();
        return view('companies', ['companies' => $companies]);
    }
    protected function sortID(Request $res)
    {
        $name = $res->get('search');
        //dd($name);
        if ($res->isMethod('GET')) {
            if($res->selectSort == 0){
                $companies = Companies::whereRaw('company_name LIKE "%'.$name.'%"')->orderBy('created_at','ASC')
                ->paginate(15)->withQueryString();
                return view('companies', ['companies' => $companies]);
            }
            else{
                $companies = Companies::orderBy('created_at','DESC')
                ->paginate(15)->withQueryString();
                return view('companies', ['companies' => $companies]);
            }
        }
        else{
            return redirect('/companies');
        }
    }
    protected function editCompanies(Request $res)
    {
        if ($res->isMethod('POST')) {
            $companies = Companies::find($res->idEdit);
            $companies->company_name = $res->nameEdit;
            $companies->company_code = $res->codeEdit;
            $companies->company_phone = $res->phoneEdit;
            $companies->company_address = $res->addressEdit;
            $companies->company_web = $res->webEdit;
            $companies->save();
            return redirect('/companies')->with(['message' => 'Đã lưu']);
        } else {
            return redirect('/companies');
        }
    }
    protected function addCompanies(Request $res)
    {
        if ($res->isMethod('POST')) {
            $allValue = array($res->all());
            foreach ($allValue as $item) {
                $addC = Companies::create([
                    'company_name' => $item['name'],
                    'company_web' => $item['web'],
                    'company_address' => $item['address'],
                    'company_code' => $item['code'],
                    'company_phone' => $item['phone'],
                    'timestamp' => now()
                ]);
            }
            return redirect('/companies')->with(['message' => 'Đã thêm']);
        } else {
            return redirect('/companies');
        }
    }
    protected function index(Request $res)
    {
        if (Session::has('username')) {
            return $this->getCompanies($res);
        } else {
            return redirect('/login');
        }
    }
}
