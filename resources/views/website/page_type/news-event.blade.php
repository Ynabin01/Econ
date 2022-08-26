@extends('layouts.master')
@section('content')
    <section class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h6>News & Events</h6>
                </div>
                <div class="col-md-6">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="index.html">Home</a></li>
                        <li><span>News & Events</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="news-event">
        <div class="container">
            <div class="row align-items-center">
              @foreach ($notices  as  $notice)
                    <div class="col-md-6">
                        <div class="news-list">
                            <ul>
                                <li><a href="inner">{{$notice->caption ?? ''}}</a></li>                           
                            </ul>
                        </div>
                    </div>
               @endforeach           
           </div>
        </div>
    </section>
@endsection