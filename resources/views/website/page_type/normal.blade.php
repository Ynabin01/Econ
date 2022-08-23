@extends('layouts.master')
@section('content')
    <section class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h6>Objective</h6>
                </div>
                <div class="col-md-6">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><span>Objective</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="innner_detail">
        <div class="container">
            <div class="row">
                <div class="@if(isset($childs) && $childs->count()>0) col-xl-8 col-lg-7 @else col-xl-12 col-lg-12 @endif">
                    <div class="innner_detail_left">
                        <div class="innner_detail_content">
                            <p>{{$normal->short_content}}</p>
                            @php echo $normal->long_content; @endphp  
                            
                        </div>
                    </div>
                </div>
                @if(isset($childs) && $childs->count()>0)
                    <div class="col-xl-4 col-lg-5">
                        <div class="sidebar">
                            <div class="sidebar__single sidebar__category">
                                <ul class="list-unstyled side-baer-menu">
                                    @foreach($childs as $child)
                                        <li><a href="#">{{$child->caption}}</a></li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="download_file_box">
                                <a href="#"><i class="icon-pdf"></i>Government Policy & Rules</a>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
        </div>
    </section>
@endsection
