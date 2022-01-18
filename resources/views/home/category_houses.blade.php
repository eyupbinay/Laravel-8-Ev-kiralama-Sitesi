@extends('layouts.home')


@section('title', 'Ev Kategorileri | '.$data->title)
@include('home._header')



@section('content')
    <!--/ Property Star /-->
    <div class="recently-properties content-area-12">
        <div class="container">
            <!-- Main title -->
            <div class="main-title">
                <h1>{{$data->title}}</h1>

            </div>
            <div class="slick-slider-area">
                <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                    @foreach($datalist as $rs)
                        <div class="slick-slide-item">
                            <div class="property-box-5">
                                <div class="property-photo">
                                    <img class="img-fluid" src="{{ Storage::url($rs->image) }}" style="height: 200px;" alt="properties">
                                    <div class="date-box">For Sale</div>
                                </div>
                                <div class="detail">
                                    <div class="heading">
                                        <h3>
                                            <a href="{{route('house',['id' => $rs->id,'slug' => $rs->slug])}}">{{$rs->title}}</a>
                                        </h3>
                                        <div class="location">
                                            <a href="{{route('house',['id' => $rs->id,'slug' => $rs->slug])}}">
                                                <i class="fa fa-map-marker">{{$rs->city}}</i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="properties-listing">
                                        <span>3 Beds</span>
                                        <span>2 Baths</span>
                                        <span>980 sqft</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
                <div class="slick-btn">
                    <div class="slick-prev slick-arrow-buton-2"></div>
                    <div class="slick-next slick-arrow-buton-2"></div>
                </div>
            </div>
        </div>
    </div>

@endsection



