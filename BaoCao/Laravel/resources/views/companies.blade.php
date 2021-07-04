@extends('layouts.page')
@section('content')
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
    <div class="modal fade" id="formAddCompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form action="" method="post">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Companies</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <h5>Company name</h5>
                            <input type="text" class="form-control" name="name" id="" required>
                            <h5>Company web</h5>
                            <input type="text" name="web" class="form-control" id="" required>
                            <h5>Company address</h5>
                            <input type="text" name="address" class="form-control" id="" required>
                            <h5>Company code</h5>
                            <input type="text" name="code" class="form-control" id="" required>
                            <h5>Company phone</h5>
                            <input type="tel" name="phone" class="form-control" id="" required>
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
    <!--Edit!-->
    <div class="modal fade" id="formEditCompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form action="" method="post">
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
                            <input type="text" class="form-control" name="name" id="" required>
                            <h5>Company web</h5>
                            <input type="text" name="web" class="form-control" id="" required>
                            <h5>Company address</h5>
                            <input type="text" name="address" class="form-control" id="" required>
                            <h5>Company code</h5>
                            <input type="text" name="code" class="form-control" id="" required>
                            <h5>Company phone</h5>
                            <input type="tel" name="phone" class="form-control" id="" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <input type="submit" value="Edit" class="btn btn-success" name="submitEdit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--Delete!-->
    <div class="modal fade" id="formDeleteCompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <form action="" method="get">
                        @csrf
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete Companies</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn có chắc chắn xóa ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit"  class="btn btn-success" name="submitDelete">Delete</button>
                        </div>
                    </form>

            </div>
        </div>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th class="scope">Company_name</th>
                <th class="scope">Company_web</th>
                <th class="scope">Company_address</th>
                <th class="scope">Company_code</th>
                <th class="scope">Company_phone</th>
                <th class="scope" colspan="2">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($companies as $company)
                <tr>
                    {{-- <td style='display:none' value="{{ $company->company_id}}"></td> --}}
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
                    <td> <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#formEditCompany">
                        <i class="far fa-edit"></i>
                        </button></td>
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
            @endforeach
        </tbody>
    </table>
    <?php echo $companies->render(); ?>
@endsection
