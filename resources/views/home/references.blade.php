@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'Referanslarımız | '.$setting->title)
@include('home._header')


@section ('content')
    <div class="sub-banner">
        <div class="container">
            <div class="page-name">
                <h1>About Us</h1>
                <ul>
                    <li><a href="/">Index</a></li>
                    <li><span>/</span>Referanslarımız</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- About city estate start -->
    <div class="about-real-estate content-area-5">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-xs-12">
                    <div class="about-slider-box">
                        <img src="{{ asset('assets')}}/img/properties/properties-3.jpg" alt="Second" class="img-fluid">
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-xs-12 align-self-center">
                    <div class="about-text">
                        <h3>Referanslarımız</h3>
                        <p>{!! $setting->references !!}</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Our team 2 start -->
    <div class="our-team-2 content-area-11">
        <div class="container">
            <!-- Main title -->
            <div class="main-title">
                <h1>Our Agent</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
            </div>
            <div class="slick-slider-area">
                <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 3}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                    <div class="slick-slide-item">
                        <div class="team-1">
                            <div class="team-photo">
                                <a href="#">
                                    <img src="{{ asset('assets')}}/img/avatar/avatar-7.jpg" alt="agent-2" class="img-fluid">
                                </a>
                            </div>
                            <div class="team-details">
                                <h5><a href="agent-detail.html">Martin Smith</a></h5>
                                <h6>Web Developer</h6>
                                <ul class="social-list clearfix">
                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="slick-slide-item">
                        <div class="team-1">
                            <div class="team-photo">
                                <a href="#">
                                    <img src="{{ asset('assets')}}/img/avatar/avatar-8.jpg" alt="agent-2" class="img-fluid">
                                </a>
                            </div>
                            <div class="team-details">
                                <h5><a href="agent-detail.html">Maria Blank</a></h5>
                                <h6>Office Manager</h6>
                                <ul class="social-list clearfix">
                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="slick-slide-item">
                        <div class="team-1">
                            <div class="team-photo">
                                <a href="#">
                                    <img src="{{ asset('assets')}}/img/avatar/avatar-5.jpg" alt="agent-2" class="img-fluid">
                                </a>
                            </div>
                            <div class="team-details">
                                <h5><a href="#">Karen Paran</a></h5>
                                <h6>Support Manager</h6>
                                <ul class="social-list clearfix">
                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="slick-slide-item">
                        <div class="team-1">
                            <div class="team-photo">
                                <a href="#">
                                    <img src="{{ asset('assets')}}/img/avatar/avatar-6.jpg" alt="agent-2" class="img-fluid">
                                </a>
                            </div>
                            <div class="team-details">
                                <h5><a href="agent-detail.html">John Pitarshon</a></h5>
                                <h6>Creative Director</h6>
                                <ul class="social-list clearfix">
                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="slick-slide-item">
                        <div class="team-1">
                            <div class="team-photo">
                                <a href="#">
                                    <img src="{{ asset('assets')}}/img/avatar/avatar-5.jpg" alt="agent-2" class="img-fluid">
                                </a>
                            </div>
                            <div class="team-details">
                                <h5><a href="#">Karen Paran</a></h5>
                                <h6>Support Manager</h6>
                                <ul class="social-list clearfix">
                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Counters strat -->
    <div class="counters">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="media counter-box">
                        <div class="media-left">
                            <i class="flaticon-tag"></i>
                        </div>
                        <div class="media-body">
                            <h1 class="counter">967</h1>
                            <p>Listings For Sale</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="media counter-box">
                        <div class="media-left">
                            <i class="flaticon-business"></i>
                        </div>
                        <div class="media-body">
                            <h1 class="counter">1276</h1>
                            <p>Listings For Rent</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="media counter-box">
                        <div class="media-left">
                            <i class="flaticon-people"></i>
                        </div>
                        <div class="media-body">
                            <h1 class="counter">396</h1>
                            <p>Our Agents</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="media counter-box">
                        <div class="media-left">
                            <i class="flaticon-people-1"></i>
                        </div>
                        <div class="media-body">
                            <h1 class="counter">177</h1>
                            <p>Computer Brokers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Services 2 start -->
    <div class="services-2 content-area-5">
        <div class="container">
            <!-- Main title -->
            <div class="main-title">
                <h1>What are you looking for?</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
            </div>
            <div class="row wow">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="service-info-5">
                        <i class="flaticon-apartment"></i>
                        <h4>Apartments</h4>
                        <p>Lorem ipsum dolor sit amet, consectur adipisicing elit, sed do eiusmod tempor incididunt</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="service-info-5">
                        <i class="flaticon-internet"></i>
                        <h4>Houses</h4>
                        <p>Lorem ipsum dolor sit amet, consectur adipisicing elit, sed do eiusmod tempor incididunt</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="service-info-5">
                        <i class="flaticon-vehicle"></i>
                        <h4>Garages</h4>
                        <p>Lorem ipsum dolor sit amet, consectur adipisicing elit, sed do eiusmod tempor incididunt</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="service-info-5">
                        <i class="flaticon-coins"></i>
                        <h4>Commercial</h4>
                        <p>Lorem ipsum dolor sit amet, consectur adipisicing elit, sed do eiusmod tempor incididunt</p>
                    </div>
                </div>
            </div>
            <div class="text-center read-more-2">
                <a href="services-1.html" class="btn-white">Read More</a>
            </div>
        </div>
    </div>

    <!-- Partners strat -->
    <div class="partners">
        <div class="container">
            <h4>Brands and Partners</h4>
            <div class="slick-slider-area">
                <div class="row slick-carousel" data-slick='{"slidesToShow": 5, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 3}}, {"breakpoint": 768,"settings":{"slidesToShow": 2}}]}'>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-1.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-2.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-3.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-4.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-5.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-6.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-2.png" alt="brand" class="img-fluid"></div>
                    <div class="slick-slide-item"><img src="{{ asset('assets')}}/img/brand/brand-4.png" alt="brand" class="img-fluid"></div>
                </div>
                <div class="slick-prev slick-arrow-buton">
                    <i class="fa fa-angle-left"></i>
                </div>
                <div class="slick-next slick-arrow-buton">
                    <i class="fa fa-angle-right"></i>
                </div>
            </div>
        </div>
    </div>
@endsection

