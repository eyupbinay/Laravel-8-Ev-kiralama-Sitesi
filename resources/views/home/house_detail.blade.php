@extends('layouts.home')

@section('title', 'İlan Detayları '.$data->title)

@section('description'){{$data->description}}@endsection

@section('keywords',$data->description)
@include('home._header')
@section('content')
    <!-- Sub banner start -->
    <div class="sub-banner">
        <div class="container">
            <div class="page-name">
                <h1>{{$data->title}}</h1>
                <ul>
                    <li><a href="/">Anasayfa</a></li>
                    <li><span>/</span>{{$data->title}}</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Properties Details page start -->
    <div class="properties-details-page content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div id="propertiesDetailsSlider" class="carousel properties-details-sliders slide mb-40">
                        <!-- main slider carousel items -->

                        <div class="carousel-inner">
                            @foreach($images as $rs)
                            <div class="@if($loop->first) active @endif item carousel-item" data-slide-number="0">
                                <img src="{{ asset("storage/$rs->image") }}" style="width: 800px; height: 400px;" class="img-fluid" alt="slider-properties">
                            </div>
                            @endforeach
                        </div>
                        <!-- main slider carousel nav controls -->
                        <ul class="carousel-indicators smail-properties list-inline nav nav-justified">
                            @foreach($images as $rs)
                            <li class="list-inline-item @if($loop->first) active @endif">
                                <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#propertiesDetailsSlider">
                                    <img src="{{ asset("storage/$rs->image") }}" class="img-fluid" alt="properties-small">
                                </a>
                            </li>
                            @endforeach
                        </ul>
                        <!-- Heading properties start -->
                        <div class="heading-properties">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="pull-left">
                                        <h3>{{$data->title}}</h3>
                                        <p><i class="fa fa-map-marker"></i> {{$data->address}}</p>
                                    </div>
                                    <div class="pull-right">
                                        <h3><span class="text-right">{{$data->price}}₺</span></h3>
                                        <p class="r-right">Kiralık</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Advanced search start -->

                    <!-- Properties description start -->
                    <div class="properties-description mb-40">
                        <h3 class="heading-2">
                            Description
                        </h3>
                        <p>{!! $data->detail !!}</p>
                    </div>
                    <!-- Properties condition start -->
                    <div class="properties-condition mb-40">
                        <h3 class="heading-2">
                            Condition
                        </h3>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <ul class="condition">
                                    <li>
                                        <i class="flaticon-furniture"></i>2 Bedroom
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>Bathroom
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <ul class="condition">
                                    <li>
                                        <i class="flaticon-square"></i>4800 sq ft
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>TV Lounge
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <ul class="condition">
                                    <li>
                                        <i class="flaticon-vehicle"></i>1 Garage
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>Balcony
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Properties amenities start -->
                    <div class="properties-amenities mb-40">
                        <h3 class="heading-2">
                            Features
                        </h3>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <ul class="amenities">
                                    <li>
                                        <i class="flaticon-technology"></i>Air conditioning
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>Balcony
                                    </li>
                                    <li>
                                        <i class="flaticon-beach"></i>Pool
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays-1"></i>Room service
                                    </li>
                                    <li>
                                        <i class="flaticon-people-2"></i>Gym
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <ul class="amenities">
                                    <li>
                                        <i class="flaticon-connection"></i>Wifi
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>Parking
                                    </li>
                                    <li>
                                        <i class="flaticon-furniture"></i>Double Bed
                                    </li>
                                    <li>
                                        <i class="flaticon-comedy"></i>Home Theater
                                    </li>
                                    <li>
                                        <i class="flaticon-technology-3"></i>Electric
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <ul class="amenities">
                                    <li>
                                        <i class="flaticon-technology-1"></i>Telephone
                                    </li>
                                    <li>
                                        <i class="flaticon-people-3"></i>Jacuzzi
                                    </li>
                                    <li>
                                        <i class="flaticon-clock"></i>Alarm
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>Garage
                                    </li>
                                    <li>
                                        <i class="flaticon-lock"></i>Security
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Floor plans start -->
                    <div class="floor-plans mb-50">
                        <h3 class="heading-2">Floor Plans</h3>
                        <table>
                            <tbody><tr>
                                <td><strong>Size</strong></td>
                                <td><strong>Rooms</strong></td>
                                <td><strong>Bathrooms</strong></td>
                                <td><strong>Garage</strong></td>
                            </tr>
                            <tr>
                                <td>1600</td>
                                <td>3</td>
                                <td>2</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                        <img src="{{asset('assets')}}/img/floor-plans.png" alt="floor-plans" class="img-fluid">
                    </div>
                    <!-- Inside properties start -->

                    <!-- Location start -->

                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="sidebar-right">
                        <!-- Advanced search start -->
                        <div class="sidebar widget advanced-search none-992">
                            <h3 class="sidebar-title">Yorum Yap</h3>
                            <form class="form-a" action="{{route('sendreview',['id'=>$data->id,'slug'=>$data->slug])}}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-12 mb-1">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-lg form-control-a" id="subject" name="subject"
                                                   placeholder="Subject" required>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-1">
                                        <div class="form-group">
                                            <textarea id="review" class="form-control" placeholder="Review" name="review" cols="45" rows="8" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-a">Yorum Yap</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- Posts by category start -->
                        <div class="posts-by-category widget">
                            <h3 class="sidebar-title">Yorumlar</h3>

                            <div class="summary-list">

                                <div class="box-comments">
                                    <ul class="list-comments">
                                        @foreach($reviews as $rs)
                                            <li>

                                                <div class="comment-details">

                                                    <span>{{$rs->created_at}}</span>
                                                    <p class="comment-description">
                                                        {{$rs->review}}
                                                    </p>
                                                    <p>{{$rs->user->name}}</p>
                                                </div>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Social media box start -->

                        <!-- Financing calculator start -->
                        <div class="contact-1 financing-calculator widget">
                            <h5 class="sidebar-title">Özellikler</h5>
                            <div class="s-border"></div>
                            <div class="m-border"></div>
                            <ul class="project-detail">
                                <li><label>Category :</label>  {{ \App\Http\Controllers\Admin\CategoryController::getParentsTree($data->category,$data->category->title) }}</li>
                                <li><label>Title :</label> {{$data->title}}</li>
                                <li><label>Oda Sayısı :</label> {{$data->odasayisi}}</li>
                                <li><label>Metre Kare :</label> {{$data->metrekare}}</li>
                                <li><label>Telefon :</label> {{$data->phone}}</li>
                                <li><label>Kat Sayısı :</label> {{$data->katsayisi}}</li>
                                <li><label>Eşya :</label> {{$data->esya}}</li>
                                <li><label>Bina Yaşı :</label> {{$data->binayasi}}</li>
                                <li><label>Adres :</label> {{$data->address}}</li>
                                <li><label>Aidat :</label> {{$data->aidat}}</li>
                                <li><label>Fiyat :</label> {{$data->price}} ₺</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

@endsection
