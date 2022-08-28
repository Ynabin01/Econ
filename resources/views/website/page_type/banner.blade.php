<section class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h6>{{$slug_detail1->caption ?? $slug_detail->caption}}</h6>
                </div>
                <div class="col-md-6">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="/">Home</a></li>
                       
                            <li><a href="/{{$slug_detail->nav_name}}"> @if(isset($slug_detail1)) {{$slug_detail->caption}} @else <span>{{$slug_detail->caption}}</span> @endif</a></li>
                        
                        @if(isset($slug_detail1))
                            <li><a href="/{{$slug_detail1->nav_name}}"><span>{{$slug_detail1->caption}}</span></a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </section>