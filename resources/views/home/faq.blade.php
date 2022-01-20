@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'SSS | '.$setting->title)
@include('home._header')


@section ('content')
    <!-- Sub banner start -->
    <div class="sub-banner">
        <div class="container">
            <div class="page-name">
                <h1>Faq</h1>
                <ul>
                    <li><a href="/">Index</a></li>
                    <li><span>/</span>Faq</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Faq start -->
    <div class="faq content-area">
        <div class="container">
            <!-- Main title -->
            <div class="main-title">
                <h1>Frequently Asked Questions</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="tabbing tabbing-box mb-30">
                        <ul class="nav nav-tabs" id="carTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active show" id="one-tab" data-toggle="tab" href="#one" role="tab" aria-controls="one" aria-selected="false">General Information</a>
                            </li>

                        </ul>
                        <div class="tab-content" id="carTabContent">
                            <div class="tab-pane fade active show" id="one" role="tabpanel" aria-labelledby="one-tab">
                                <div id="faq" class="faq-accordion">
                                    <div class="card m-b-0">
                                        @foreach($datalist as $rs)
                                        <div class="card-header">
                                            <a class="card-title collapsed" data-toggle="collapse" data-parent="#faq" href="#collapse7">
                                                {{$rs->question}}
                                            </a>
                                        </div>
                                        <div id="collapse7" class="card-block collapse">
                                            <div class="foq-info">
                                                <p>{!! $rs->answer !!}</p>
                                                <hr>

                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

