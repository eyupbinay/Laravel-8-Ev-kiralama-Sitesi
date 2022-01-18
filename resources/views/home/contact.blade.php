@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'İletişim '.$setting->title)
@include('home._header')

@section ('content')
    <!-- Sub banner start -->
    <div class="sub-banner">
        <div class="container">
            <div class="page-name">
                <h1>Contact Us</h1>
                <ul>
                    <li><a href="/">Index</a></li>
                    <li><span>/</span>Contact Us</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Contact 2 start -->
    <div class="contact-2 content-area-5">
        <div class="container">
            <!-- Main title -->
            <div class="main-title">
                <h1 class="mb-10">Contact us</h1>
                <p>{!! $setting->contact!!}</p>
            </div>
            <div class="contact-info">
                <div class="row">
                    <div class="col-md-3 col-sm-6 mrg-btn-50">
                        <i class="flaticon-location"></i>
                        <p>Office Address</p>
                        <strong>20/F Green Road, Dhaka</strong>
                    </div>
                    <div class="col-md-3 col-sm-6 mrg-btn-50">
                        <i class="flaticon-technology-1"></i>
                        <p>Phone Number</p>
                        <strong>+55 417 634 7071</strong>
                    </div>
                    <div class="col-md-3 col-sm-6 mrg-btn-50">
                        <i class="flaticon-envelope"></i>
                        <p>Email Address</p>
                        <strong>info@themevessel.com</strong>
                    </div>
                    <div class="col-md-3 col-sm-6 mrg-btn-50">
                        <i class="flaticon-globe"></i>
                        <p>Web</p>
                        <strong>info@themevessel.com</strong>
                    </div>
                </div>
            </div>

            <form class="form-a contactForm" action="{{route('sendmessage')}}" method="post" role="form">,
                @csrf
                <div id="sendmessage">@include('home.message')</div>
                <div id="errormessage"></div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control form-control-lg form-control-a" placeholder="Your Name" id="name" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control form-control-lg form-control-a" placeholder="Your Email" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="form-group">
                            <input type="number" name="phone" id="phone" class="form-control form-control-lg form-control-a" placeholder="Your Phone" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="form-group">
                            <input name="subject" type="text" id="subject" class="form-control form-control-lg form-control-a" placeholder="Your Subject" data-rule="text" data-msg="Please enter a valid email">
                            <div class="validation"></div>
                        </div>
                    </div>

                    <div class="col-md-12 mb-3">
                        <div class="form-group">
                            <textarea name="message" class="form-control" id="message" cols="45" rows="8" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-a">Mesaj Gönder</button>
                    </div>
                </div>
            </form>
        </div>
        </div>
    </div>

    <!-- Google map start -->
    <div class="section">
        <div class="map">
            <div id="contactMap" class="contact-map"></div>
        </div>
    </div>
@endsection

