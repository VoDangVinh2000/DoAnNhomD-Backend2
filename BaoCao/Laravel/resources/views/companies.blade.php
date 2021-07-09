@extends('layouts.page')
@section('content')
<div class="title-content">
    <h1 class="h-title">Companies</h1>
</div>
    <!--Main!-->
    {{-- @dd($company); --}}
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item add-companies">
            <label for="">Add Companies</label>
            <button type="button" class="btn btn-outline-secondary add" data-toggle="modal" data-target="#formAddCompany">
                <i class="fas fa-plus"></i>
            </button>
        </li>
    </ul>
    <!--Add!-->

@if(session('alertAdd'))
    <section class='alert alert-success '>{{session('alertAdd')}}</section>
@endif  
@if(session('alertDel'))
    <section class='alert alert-warning '>{{session('alertDel')}}</section>
@endif 
@if(session('alertEdit'))
    <section class='alert alert-warning '>{{session('alertEdit')}}</section>
@endif 
    <div class="modal fade form-add" id="formAddCompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form action="{{route('addCompanies')}}" method="post">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Companies</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="form-div">
                                <input type="text" class="form-control" name="name" id="" required placeholder=" ">
                                <label for="" class="form-lable">Company Name</label>
                            </div>
                            <div class="form-div">
                                <input type="text" name="web" class="form-control" id="" required placeholder=" ">
                                <label for="" class="form-lable">Company Web</label>
                            </div>
                            <div class="form-div">
                                <input type="text" name="address" class="form-control" id="" required placeholder=" ">
                                <label for="" class="form-lable">Company Address</label>
                            </div>
                            <div class="form-div">
                                <input type="text" name="code" class="form-control" id="" required placeholder=" ">
                                <label for="" class="form-lable">Company Code</label>
                            </div>
                            <div class="form-div">
                                <input type="tel" name="phone" class="form-control" id="" required placeholder=" " minlength="10" maxlength="10" pattern="^[0-9]+$">
                                <label for="" class="form-lable">Company Phone</label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <input type="submit" value="Add" class="btn btn-success" name="submitAdd">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th class="scope">Company Name</th>
                <th class="scope">Company Web</th>
                <th class="scope">Company Address</th>
                <th class="scope">Company Code</th>
                <th class="scope">Company Phone</th>
                <th class="scope" colspan="2">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($companies as $company)
                <tr>
                    <td>
                        <p>{{ $company->company_name }}</p>
                    </td>
                    <td>
                        <p>{{ $company->company_web }}</p>
                    </td>
                    <td>
                        <p>{{ $company->company_address }}</p>
                    </td>
                    <td>
                        <p>{{ $company->company_code }}</p>
                    </td>
                    <td>
                        <p>{{ $company->company_phone }}</p>
                    </td>
                    <td>
                        <form action="" method="get">
                            <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#formEditCompany{{$company->company_id}}">
                                <i class="far fa-edit"></i>
                            </button>
                        </form>
                    </td>
                    <td>
                        <form action="{{asset('')}}companies/{{$company->company_id}}" method="post" onsubmit="return confirm('Bạn có muốn xóa không!')">
                            {{csrf_field()}}
                            {{method_field('delete')}}
                            <button type="submit" class="btn btn-outline-danger" name="delete" >
                                <i class="far fa-trash-alt"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                <!-- Edit -->
                <div class="modal fade form-edit" id="formEditCompany{{$company->company_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <form action="{{ route ('editCompanies.update',$company->company_id)}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Edit Companies</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">

                                        <h5>Company name</h5>
                                        <input type="text" class="form-control" name="edit-name" value="{{$company->company_name}}" required>
                                        <h5>Company web</h5>
                                        <input type="text" name="edit-web" class="form-control" value="{{$company->company_web}}" id="" required>
                                        <h5>Company address</h5>
                                        <input type="text" name="edit-address" class="form-control" value="{{$company->company_address}}" id="" required>
                                        <h5>Company code</h5>
                                        <input type="text" name="edit-code" class="form-control" value="{{$company->company_code}}" id="" required>
                                        <h5>Company phone</h5>
                                        <input type="tel" name="edit-phone" class="form-control" value="{{$company->company_phone}}" id="" required minlength="10" maxlength="10" pattern="^[0-9]+$">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <input type="submit" value="Save" class="btn btn-success" name="submitEdit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </tbody>
    </table>
    <?php echo $companies->render(); ?>
@endsection
