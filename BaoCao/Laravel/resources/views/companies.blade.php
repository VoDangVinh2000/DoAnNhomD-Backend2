@extends('layouts.page')
@section('content')
    <div class="companies-main">
        <!--Main!-->
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item dropdown">
                <a style="color: black" class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">Chức năng</a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#formAddCompany">
                        Add company
                    </button>
                </div>
            </li>
        </ul>
        <!--Add!-->
        <div class="modal fade" id="formAddCompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="{{ route('addCompanies') }}" method="post">
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
                                <input type="text" class="form-control" name="name" required>
                                <h5>Company web</h5>
                                <input type="text" name="web" class="form-control" required>
                                <h5>Company address</h5>
                                <input type="text" name="address" class="form-control" required>
                                <h5>Company code</h5>
                                <input type="text" name="code" class="form-control" required>
                                <h5>Company phone</h5>
                                <input type="tel" name="phone" class="form-control" required>
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
                    <form action="{{ route('editCompanies') }}" method="post">
                        @csrf
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Companies</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="idEdit" value="">
                                <h5>Company name</h5>
                                <input type="text" class="form-control" name="nameEdit" required>
                                <h5>Company web</h5>
                                <input type="text" name="webEdit" class="form-control" required>
                                <h5>Company address</h5>
                                <input type="text" name="addressEdit" class="form-control" required>
                                <h5>Company code</h5>
                                <input type="text" name="codeEdit" class="form-control" required>
                                <h5>Company phone</h5>
                                <input type="tel" name="phoneEdit" class="form-control" required>
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
                    <form action="" method="post">
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
                            <input type="submit" value="Delete" class="btn btn-success" name="submitDelete">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="message" style="display: flex;justify-content: center">
            @if (Session::has('message'))
                <p style="background: green;color:white;padding:5px;border-radius:5px" class="message-p">
                    {{ Session::get('message') }}</p>
            @endif
        </div>
        <div class="row">
            <div class="col-md">
                <p>Paginator</p>
                <?php echo $companies->links(); ?>
            </div>
            <div class="col-md-2">
                <p>Sorting</p>
                <form action="{{ route('sortCompanies') }}" method="get">
                    @csrf
                    @if (Request::get('selectSort') == 0)
                        <select class="form-control" name="selectSort" id="selectSort">
                            <option value="0" selected >Default</option>
                            <option value="1" >Latest</option>
                        </select>
                    @else
                    <select class="form-control" name="selectSort" id="selectSort">
                        <option value="0" >Default</option>
                        <option value="1" selected >Latest</option>
                    </select>
                    @endif
                    <input type="submit" value="Sort" name="sort" class="btn btn-success">
                </form>
            </div>
        </div>

        <table class="table">
            <thead>
                <tr>
                    <th></th>
                    <th class="scope">Company_name</th>
                    <th class="scope">Company_web</th>
                    <th class="scope">Company_address</th>
                    <th class="scope">Company_code</th>
                    <th class="scope">Company_phone</th>
                    <th class="scope" colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($companies as $company):
                    <tr>
                        <td><input type="hidden" name="idC" value="{{ $company->company_id }}"></td>
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
                        <td> <button type="button" name="editCompanies" class="btn btn-primary" data-toggle="modal"
                                data-target="#formEditCompany">
                                Edit
                            </button></td>
                        <td> <button type="button" class="btn btn-danger" data-toggle="modal"
                                data-target="#formDeleteCompany">
                                Delete
                            </button></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <script src="{{ asset('storage/js/companies.js') }}"></script>
@endsection
