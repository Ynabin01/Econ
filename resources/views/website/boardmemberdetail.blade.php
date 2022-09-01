@extends('layouts.master')

@section('content')
    <section class="team_detail">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="personal-detail">
                        <img src="{{ $boardmemberdetail->banner_image }}">
                        <p>{{ $boardmemberdetail->caption }}</p>
                        <h4>{{ $boardmemberdetail->short_content }}</h4>
                    </div>
                </div>
                <div class="col-lg-9 col-md-6">
                    <div class="personal-detail-list">
                            @php echo $boardmemberdetail->long_content ; @endphp
                    </div>
                </div>
            </div>
        <div>
    </section>
@endsection
