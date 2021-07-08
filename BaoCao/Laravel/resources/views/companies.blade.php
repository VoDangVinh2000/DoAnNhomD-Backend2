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
                    <form action="{{ route('addCompanies') }}" method="post" enctype="multipart/form-data">
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
                                @if ($errors->has('name'))
                                    <p class="error" style="color: red">{{ $errors->first('name') }}</p>
                                @endif
                                <input type="text" class="form-control" value="{{ old('name') }}" name="name">
                                <h5>Company web</h5>
                                @if ($errors->has('web'))
                                    <p class="error" style="color: red">{{ $errors->first('web') }}</p>
                                @endif
                                <input type="text" name="web" class="form-control" value="{{ old('web') }}">

                                <h5>Company address</h5>
                                @if ($errors->has('address'))
                                    <p class="error" style="color: red">{{ $errors->first('address') }}</p>
                                @endif
                                <input type="text" name="address" class="form-control" value="{{ old('address') }}">

                                <h5>Company code</h5>
                                @if ($errors->has('code'))
                                    <p class="error" style="color: red">{{ $errors->first('code') }}</p>
                                @endif
                                <input type="text" name="code" class="form-control" value="{{ old('code') }}">

                                <h5>Company phone</h5>
                                @if ($errors->has('phone'))
                                    <p class="error" style="color: red">{{ $errors->first('phone') }}</p>
                                @endif
                                <input type="tel" name="phone" class="form-control" value="{{ old('phone') }}">

                                <h5>Image</h5>
                                @if ($errors->has('image'))
                                    <p class="error" style="color: red">{{ $errors->first('image') }}</p>
                                @endif
                                <input type="file" class="form-control" value="{{ old('image') }}" name="image">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type="submit" value="Add" class="btn btn-success">
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
                    <form action="{{ route('editCompanies') }}" method="post" enctype="multipart/form-data">
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
                                @if ($errors->has('nameEdit'))
                                    <p class="error" style="color: red">{{ $errors->first('nameEdit') }}</p>
                                @endif
                                <input type="text" class="form-control" value="{{ old('nameEdit') }}" name="nameEdit">
                                <h5>Company web</h5>
                                @if ($errors->has('webEdit'))
                                    <p class="error" style="color: red">{{ $errors->first('webEdit') }}</p>
                                @endif
                                <input type="text" name="webEdit" value="{{ old('webEdit') }}" class="form-control">
                                <h5>Company address</h5>
                                @if ($errors->has('addressEdit'))
                                    <p class="error" style="color: red">{{ $errors->first('addressEdit') }}</p>
                                @endif
                                <input type="text" name="addressEdit" value="{{ old('addressEdit') }}" class="form-control">
                                <h5>Company code</h5>
                                @if ($errors->has('codeEdit'))
                                    <p class="error" style="color: red">{{ $errors->first('codeEdit') }}</p>
                                @endif
                                <input type="text" name="codeEdit" value="{{ old('codeEdit') }}" class="form-control">
                                <h5>Company phone</h5>
                                @if ($errors->has('phoneEdit'))
                                    <p class="error" style="color: red">{{ $errors->first('phoneEdit') }}</p>
                                @endif
                                <input type="tel" name="phoneEdit" value="{{ old('phoneEdit') }}" class="form-control"s>
                                <h5>Company_image</h5>
                                @if ($errors->has('imageFile'))
                                    <p class="error" style="color: red">{{ $errors->first('imageFile') }}</p>
                                @endif
                                <input type="file" name="imageFile">
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
                <p style="background: red;color:white;padding:5px;border-radius:5px" class="message-p">
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
                            <option value="0" selected>Default</option>
                            <option value="1">Latest</option>
                        </select>
                    @else
                        <select class="form-control" name="selectSort" id="selectSort">
                            <option value="0">Default</option>
                            <option value="1" selected>Latest</option>
                        </select>
                    @endif
                    <input type="submit" value="Sort" name="sort" class="btn btn-success">
                </form>
            </div>
        </div>
        <div class="row">
            @foreach ($companies as $company)
                <div class="col-md-6">
                    <div class="card" style="width: 23rem;;overflow:hidden;word-break: break-all">
                        <img {{-- class="card-img-top" --}}s style="height: 350px;object-fit: "
                            src="{{ asset('/storage/images/' . $company->company_image . ' ') }}" alt="companies-image">
                        <div class="card-body">
                            <input type="hidden" name="idC" value="{{ $company->company_id }}">
                            <div class="row">
                                <div class="col-md-6">
                                    <strong>Company-name:</strong>
                                </div>
                                <div class="col-md-6">
                                    <p class="card-company-name">{{ $company->company_name }}</p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Company-web:</strong>
                                </div>
                                <div class="col-md-6">
                                    <p class="card-company-web"><span>{{ $company->company_web }}</span> </p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Company-address:</strong>
                                </div>
                                <div class="col-md-6">
                                    <p class="card-company-address"><span>{{ $company->company_address }}</span> </p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Company-code:</strong>
                                </div>
                                <div class="col-md-6">
                                    <p class="card-company-code"><span>{{ $company->company_code }} </span></p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Company-phone:</strong>
                                </div>
                                <div class="col-md-6">
                                    <p class="card-company-phone"><span>{{ $company->company_phone }} </span></p>
                                </div><br>
                                <button type="button" name="editCompanies" class="btn btn-primary" data-toggle="modal"
                                    data-target="#formEditCompany">
                                    Edit
                                </button>
                                <button type="button" class="btn btn-danger" data-toggle="modal"
                                    data-target="#formDeleteCompany">
                                    Delete
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <script src="{{ asset('storage/js/companies.js') }}"></script>
@endsection
