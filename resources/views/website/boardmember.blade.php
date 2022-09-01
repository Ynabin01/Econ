@extends('layouts.master')

@section('content')
    
@foreach($boardmembers as $boardmember)
    <section class="team_one">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6">
                    <div class="team_one_single">
                        <a href="boardmemberdetail">
                            <div class="team_one_image">
                                <img src="{{$boardmember->banner_image}}" alt="">
                            </div>
                            <div class="team_one_deatils">
                                <p>{{$boardmember->caption}}</p>
                                <h2>{{$boardmember->short_content}}</h2>
                            </div>
                        </a>
                    </div>
                </div>    
            </div>
        </div>
    </section>
@endforeach    
@endsection
