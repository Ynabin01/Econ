<div class="container">
    <div class="scroller">
        <div class="flash-slider">
            <div class="marquee-sibling bg-green">
                Notice
            </div>
            <div class="marquee">
                <ul class="marquee-content-items">
                   @foreach ($notices as $notice)
                   <li><a href="/notice-page">{{$notice->caption}}</a></li>   
                   @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
