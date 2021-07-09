<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Companies;
//use Dotenv\Validator;
use Illuminate\Auth\Events\Validated;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CompaniesController extends Controller
{

    public function getCompanies(Request $request)
    {
        $per_page = $request->input('per_page');
        $obj = new Companies();
        $companies = $obj->paginate($per_page);
        $name = $request->get('search');
        $companies = $obj->where('company_name', 'like', "%$name%")->paginate($per_page);
        $companies->appends(['search' => $name]);
        return view('companies', ['companies' => $companies]);
    }
    public function index(Request $res)
    {
        if (Session::has('username')) {
            return $this->getCompanies($res);
        } else {
            return redirect('/login');
        }
    }

    protected function addCompanies(Request $request)
    {
        if ($request->isMethod('POST')) {
            $name = $request->name;
            $web = $request->web;
            $address = $request->address;
            $code = $request->code;
            $phone = $request->phone;
            $companies = Companies::create([
                'company_name' => $name,
                'company_web' => $web,
                'company_address' => $address,
                'company_code' => $code,
                'company_phone' => $phone,
                'timestamp' => now()
            ]);

            $alertAdd = 'Add Company Success !!! ';
            return redirect('companies')->with('alertAdd', $alertAdd);
        } else {
            return redirect('/companies');
        }
    }

    protected function editCompanies( Request $request,$id)
    {
        $obj = new Companies();
        $data = $request->all();
        $companies = $obj->find($id);
        $companies->company_name = $data['edit-name'];
        $companies->company_code = $data['edit-code'];
        $companies->company_phone = $data['edit-phone'];
        $companies->company_address = $data['edit-address'];
        $companies->company_web = $data['edit-web'];
        $companies->updated_at = now();
        $companies->save();
        $alertEdit = 'Edit Company Success !!! ';
        return redirect('/companies')->with('alertEdit',$alertEdit);
    }
}
