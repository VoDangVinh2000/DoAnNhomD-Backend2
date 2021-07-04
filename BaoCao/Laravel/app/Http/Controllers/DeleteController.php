<?php

namespace App\Http\Controllers;

use App\Models\Companies;
use Illuminate\Http\Request;


class DeleteController extends Controller
{
    public function destroy($id)
    {
        $obj = new Companies();
        $obj->where('company_id',$id)->delete();
       return redirect('companies');

    }
}
