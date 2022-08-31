@php

$normal_gallary_notice = App\Models\Navigation::query()
    ->where('nav_category', 'Main')
    ->where('page_type', '!=', 'Job')
    ->where('page_type', '!=', 'Photo Gallery')
    ->where('page_type', '!=', 'Notice')
    ->where('parent_page_id', 0)
    ->where('page_status', '1')
    ->orderBy('position', 'ASC')
    ->get();
if (isset($normal)) {
    $seo = $normal;
} elseif (isset($job)) {
    $seo = $job;
}

$menus = App\Models\Navigation::query()
    ->where('nav_category', 'Main')
    ->where('page_type', '!=', 'Service')
    ->where('page_type', '!=', 'News & Events')
    ->where('parent_page_id', 0)
    ->where('page_status', '1')
    ->orderBy('position', 'ASC')
    ->get();
$global_setting = App\Models\GlobalSetting::all()->first();
$services = App\Models\Navigation::query()
    ->where('page_type', 'Service')
    ->where('page_status', '1')
    ->latest()
    ->paginate(8);
if (isset($normal)) {
    $seo = $normal;
} elseif (isset($job)) {
    $seo = $job;
}
@endphp
<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-----SEO--------->
    <title> {{ $seo->page_title ?? $global_setting->page_title }}</title>

    <meta name="title" content="{{ $seo->page_titile ?? $global_setting->page_title }}">
    <meta name="description" content="{{ $seo->page_description ?? $global_setting->page_description }}">
    <meta name="keywords" content="{{ $seo->page_keyword ?? $global_setting->page_keyword }}">
    <meta name="robots" content="index, follow">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="language" content="English">
    <meta name="revisit-after" content="1 days">
    <meta name="author" content="{{ $global_setting->site_name ?? '' }}">


    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ $global_setting->website_full_address ?? '' }}">
    <meta property="og:title" content="{{ $seo->page_title ?? $global_setting->page_title }}">
    <meta property="og:description" content="{{ $seo->page_description ?? $global_setting->page_description }}">
    <meta property="og:image" content="{{ $seo->banner_image ?? '/uploads/icons/' . $global_setting->site_logo }}">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="{{ $global_setting->website_full_address ?? '' }}">
    <meta property="twitter:title" content="{{ $seo->page_title ?? $global_setting->page_title }}">
    <meta property="twitter:description" content="{{ $seo->page_description ?? $global_setting->page_description }}">
    <meta property="twitter:image"
        content="{{ $seo->banner_image ?? '/uploads/icons/' . $global_setting->site_logo }}">

    <!-----END SEO------->



    <link rel="icon" type="image/png" href="/website/images/favicon.png">

    <!-- Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap' rel="stylesheet">
    <!-- Css-->
    <link rel="stylesheet" href="/website/css/bootstrap.min.css">
    <link rel="stylesheet" href="/website/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/website/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/website/css/magnific-popup.css">
    <link rel="stylesheet" href="/website/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/website/css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="/website/css/agrikol_iconl.css">
    <!-- Template styles -->
    <link rel="stylesheet" href="/website/css/style.css">
    <link rel="stylesheet" href="/website/css/responsive.css">

</head>

<body>

    <div class="preloader">
        <img src="website/images/econ.png" class="preloader__image" alt="">
    </div>
    <!-- /.preloader -->

    <div class="page-wrapper">


        <div class="site-header__header-one-wrap">

            <div class="topbar-one">
                <div class="topbar_bg" style="background-image: url(website/images/header-bg.png)"></div>
                <div class="container">
                    <div class="topbar-one__left">
                        <a href="mailto:info@nepalexport.org.np"><span class="icon-message"></span>
                            {{ $global_setting->site_email }}</a>
                        <a href="tel:97714441337"><span class="icon-phone-call"></span>{{ $global_setting->phone }}</a>
                    </div>
                    <div class="topbar-one__middle">
                        <a href="/index" class="main-nav__logo">
                            {{-- <img src="website/images/econ.png" class="main-logo" alt="Awesome Image" /> --}}
                            <img src="/uploads/icons/{{ $global_setting->site_logo }}"
                                        alt="_logo" title="" class="main-logo" />
                        </a>
                    </div>
                    <div class="topbar-one__right">
                        <div class="topbar-one__social">
                            <a href="{{ $global_setting->facebook ?? '' }}"><i class="fab fa-facebook-square"></i></a>
                            <a href="{{ $global_setting->twitter ?? '' }}"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <header class="main-nav__header-one">
                <nav class="header-navigation stricky">
                    <div class="container clearfix">
                        <div class="main-nav__left">
                            <a href="#" class="side-menu__toggler">
                                <i class="fa fa-bars"></i>
                            </a>
                        </div>
                        <div class="main-nav__main-navigation">
                            <ul class=" main-nav__navigation-box">
                                <li @if (!isset($slug_detail)) class="current" @endif>
                                    <a href="/">Home</a>
                                </li>
                                <!--------start menu----------->
                                @foreach ($menus as $menu)
                                    <li @if (isset($slug_detail) && $menu->nav_name == $slug_detail->nav_name) class="current" @endif><a
                                            href="{{ route('category', $menu->nav_name) }}">{{ $menu->caption }}</a>
                                        <ul>

                                            @foreach ($menu->childs as $submenu)
                                                <li><a
                                                        href="{{ route('subcategory', [$menu->nav_name, $submenu->nav_name]) }}">{{ $submenu->caption }}</a>
                                                </li>
                                            @endforeach
                                        </ul>

                                    </li>
                                @endforeach
                                <li class="dropdown">
                                    <a href="#">Members</a>
                                    <ul>
                                        <li><a href="/memberlist">Members List</a></li>
                                        <li><a href="/memberform">Membership Form</a></li>
                                    </ul>
                                </li>

                            </ul>
                            <!----------end menu--------------->
                        </div><!-- /.navbar-collapse -->
                    </div>
                </nav>
            </header>
        </div>

        @yield('content')
        <!---------------- notice scroller -------------->
        <!---------------- slider Section ---------------->
        <!---------------- About Section ----------------->
        <!---------------- Message Section ---------------->
        <!---------------- End Message Section ------------>
        <!----------------- EXPORTABLE ITEMS -------------->
        <!------------------ NEWS & EVENTS ----------------->
        <!----------------- Partner Section --------------->
        <!-- Footer -->
        <footer class="site-footer">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-xl-5 col-lg-5 col-md-6">
                        <div class="footer-widget__column footer-widget__about">
                            <div class="footer-widget_about_text">
                                <div class="logo">
                                    <a href="/"><img src="/uploads/icons/{{ $global_setting->site_logo }}"
                                            alt="footer_img" /></a>

                                </div>
                                <div class="text">
                                    {{ $global_setting->page_description }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="footer-widget__column footer-widget__link">
                            <div class="footer-widget__title">
                                <h3>Useful Links</h3>
                            </div>
                            <ul class="footer-widget__links-list list-unstyled">
                                <li><a href="">Home</a></li>
                                @foreach ($normal_gallary_notice->where('page_type', '=', 'Group') as $dat)
                                    <li><a href="{{ route('category', $dat->nav_name) }}">{{ $dat->caption }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="footer-widget__column footer-widget__contact">
                            <div class="footer-widget__title">
                                <h3>Contact</h3>
                            </div>
                            <div class="footer-widget_contact">
                                <div>
                                    {{ $global_setting->website_full_address }}<br>
                                    {{ $global_setting->address_ne }}
                                </div>
                                <p><a
                                        href="mailto:{{ $global_setting->site_email }}">{{ $global_setting->site_email }}</a><br>
                                    <a href="mailto:econ.exportcouncil@gmail.com">{{ $global_setting->other }}</a>
                                </p>
                                <a href="tel:{{ $global_setting->phone }}">{{ $global_setting->phone }}</a>
                               
                                {{-- / <a
                                href="tel:{{ $global_setting->phone_ne }}">{{ $global_setting->phone_ne }}</a> --}}
                                <div class="site-footer__social">
                                    <a href="{{ $global_setting->facebook ?? '' }}"><i
                                            class="fab fa-facebook-square"></i></a>
                                    <a href="{{ $global_setting->twitter ?? '' }}"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i
                                            class="fab fa-linkedin"></i></a>
                                    <a href="#"><i
                                            class="fab fa-dribbble"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->

        <!-- Footer Bottom -->
        <div class="site-footer_bottom">
            <div class="container">
                <div class="site-footer_bottom_copyright">
                    <p>@ All copyright 2022, Export Council of Nepal</p>
                </div>
                <div class="site-footer_bottom_menu">
                    <ul class="list-unstyled">
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Use</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Footer Bottom -->

    </div><!-- /.page-wrapper -->


    <a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-angle-up"></i></a>

    <div class="side-menu__block">
        <div class="side-menu__block-overlay custom-cursor__overlay">
            <div class="cursor"></div>
            <div class="cursor-follower"></div>
        </div><!-- /.side-menu__block-overlay -->
        <div class="side-menu__block-inner ">
            <div class="side-menu__top justify-content-end">
                <a href="#" class="side-menu__toggler side-menu__close-btn"><img
                        src="/website/images/close-1-1.png" alt=""></a>
            </div><!-- /.side-menu__top -->

            <nav class="mobile-nav__container">
                <!-- content is loading via js -->
            </nav>

            <div class="side-menu__sep"></div><!-- /.side-menu__sep -->
        </div>
    </div>

    <script src="/website/js/jquery.min.js"></script>
    <script src="/website/js/bootstrap.bundle.min.js"></script>
    <script src="/website/js/owl.carousel.min.js"></script>
    <script src="/website/js/jquery.magnific-popup.min.js"></script>
    <script src="/website/js/TweenMax.min.js"></script>
    <script src="/website/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/website/js/marquee.js"></script>
    <script src="/website/js/theme.js"></script>

    <!-- template scripts -->
    {{-- <script src="/website/js/theme.js"></script> --}}

    <script type="text/javascript">
        $(function() {
            createMarquee({
                duration: 100000,
            });
        });
    </script>

</body>

</html>
