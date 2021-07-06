<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Companies;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

use function PHPUnit\Framework\fileExists;

class CompaniesController extends Controller
{
    protected function getCompanies(Request $request)
    {
        // $per_page = $request->input('per_page');
        // $obj = new Companies();
        //$companies = $obj->paginate($per_page);
        $name = $request->get('search');
        //dd($name);
        $companies = Companies::whereRaw('company_name LIKE "%' . $name . '%" ')->paginate(6)->withQueryString();
        return view('companies', ['companies' => $companies]);
    }
    protected function sortID(Request $res)
    {
        $name = $res->get('search');
        if ($res->isMethod('get')) {
            if ($res->selectSort == 0) {
                $companies = Companies::whereRaw('company_name LIKE "%' . $name . '%"')->orderBy('created_at', 'ASC')
                    ->paginate(5)->withQueryString();

                return view('companies', ['companies' => $companies]);
            } else {
                $companies = Companies::orderBy('created_at', 'DESC')
                    ->paginate(5)->withQueryString();
                return view('companies', ['companies' => $companies]);
            }
        } else {
            return redirect('/companies');
        }
    }
    protected function editCompanies(Request $res)
    {
        if ($res->isMethod('post')) {
            $companies = Companies::find($res->idEdit);
            $companies->company_name = $res->nameEdit;
            $companies->company_code = $res->codeEdit;
            $companies->company_phone = $res->phoneEdit;
            $companies->company_address = $res->addressEdit;
            $companies->company_web = $res->webEdit;
            $companies->updated_at = now();
            if ($res->hasFile('imageFile')) {
                $res->validate([
                    'image' => 'required|image|mimes:png,jpg,gif,svg'
                ]);
                $originalType = $res->imageFile->getClientOriginalExtension(); //png or ...
                $fileName = $_FILES['imageFile']['name']; //Bungary.jpg
                dd($fileName);
                //$res->move('storage/images/',$fileName);
                //$companies->company_image = $fileName;
            }
            //  $companies->save();
            // return redirect('/companies')->with(['message' => 'Đã lưu']);
        } else {
            return redirect('/companies');
        }
    }
    protected function addCompanies(Request $res)
    {
        if ($res->isMethod('post')) {

            $allValue = Validator::make($res->all(), [
                'name' => 'required|unique:companies,company_name',
                'web' => 'required',
                'address' => 'required',
                'code' => 'required|',
                'phone' => 'required|min:10|max:10|regex:/^[0-9]+$/',
                'image' => 'required|image|mimes:png,jpg,jpeg,gif,tif,eps|'
            ]);
            if ($allValue->fails()) {
                return redirect('/companies')->withErrors($allValue)->withInput();
            }
            else {

                $path = "storage/images/" . $_FILES['image']['name'];
                if (file_exists($path)) {
                    return redirect('/companies')->with(['message' => 'Tên ảnh đã tồn tại.']);
                } else {
                    $addValue = Companies::create([
                        'company_name' => $res->name,
                        'company_web' => $res->web,
                        'company_address' => $res->address,
                        'company_code' => $res->code,
                        'company_phone' => $res->phone,
                        'company_image' => $_FILES['image']['name']
                    ]);
                    $image = $res->file('image');
                    $image->move('storage/images/',$_FILES['image']['name']);
                    return redirect('/companies')->with(['message' => 'Đã thêm']);
                }
            }
        }
        else {
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
