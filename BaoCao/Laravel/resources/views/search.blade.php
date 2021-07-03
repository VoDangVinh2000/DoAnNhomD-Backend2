@extends('layouts.page')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md">
            <form action="" method="get">
                <input class="" type="text" name="name" id="">
                <input type="submit" class="btn btn-primary" value="Submit">
            </form>
        </div>
        <div class="col-md">
            <table class="table">
                <thead>
                    <tr>
                        <th>Company_name</th>
                        <th>Company_web</th>
                        <th>Company_address</th>
                        <th>Company_code</th>
                        <th>Company_phone</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($companies as $company):
                    <tr>
                        <td>
                            <p>{{$company->company_name}}</p>
                        </td>
                        <td>
                            <p>{{$company->company_web}}</p>
                        </td>
                        <td>
                            <p>{{$company->company_address}}</p>
                        </td>
                        <td>
                            <p>{{$company->company_code}}</p>
                        </td>
                        <td>
                            <p>{{$company->company_phone}}</p>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <?php echo $companies->render() ?>
        </div>
    </div>
</div>
@endsection


