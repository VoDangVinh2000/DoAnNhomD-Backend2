@extends('layouts.page')

@section('content')
<table class="table">
    <thead>
        <tr>
            <th>Trainer_name</th>
            <th>Company_id</th>
            <th>Trainer_email</th>
            <th>Trainer_phone</th>
            <th>Created_at</th>
        </tr>
    </thead>
    <tbody>
            @foreach($trainers as $trainer):
            <tr>
                <td><p>{{$trainer->trainer_name}}</p></td>
                <td><p>{{$trainer->company_name}}</p></td>
                <td><p>{{$trainer->trainer_email}}</p></td>
                <td><p>{{$trainer->trainer_phone}}</p></td>
                <td><p>{{$trainer->created_at}}</p></td>
            </tr>
            @endforeach
    </tbody>
</table>
<?php echo $trainers->render() ?>
@endsection


