@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

<head>
    @FilemanagerScript
</head>

<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>


@section('title', 'User Profile '.$setting->title)
@include('home._header')
@section('content')

    <section id="maincontent" style="padding-top: 200px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">


                    <div class="clearfix">
                    </div>
                    <div class="row">
                        <div class="col-md-12">

                            <div class="card">
                                <div class="card-body">

                                    <div style="width:1000px; height: auto;">
                                        <form action="{{route('user_house_store')}}" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <table>

                                                <tr><h4>Category:</h4> <select name="category_id" id="category_id" style="width: 1000px">
                                                        <option value="0" selected="selected">Ana Mekan</option>
                                                        @foreach($datalist as $rs)
                                                            <option value="{{$rs->id}}">{{ \App\Http\Controllers\Admin\CategoryController::getParentsTree($rs,$rs->title) }}</option>
                                                        @endforeach


                                                    </select></tr>
                                                <tr><h4>Title:</h4> <input style="width: 1000px" id="title" type="text" name="title" placeholder="Title"/></tr>
                                                <tr><h4>Keywords: </h4><input style="width: 1000px" id="keywords" type="text" name="keywords" placeholder="Keywords"/></tr>
                                                <tr><h4>Description: </h4><input style="width: 1000px" id="description" type="text" name="description" placeholder="Description"/></tr>
                                                <tr><h4>Address: </h4><input style="width: 1000px" id="address" type="text" name="address" placeholder="address"/></tr>
                                                <tr><h4>Phone: </h4><input style="width: 1000px" id="phone" type="number" name="phone" placeholder="phone"/></tr>
                                                <tr><h4>Metre Kare: </h4><input style="width: 1000px" id="metrekare" type="number" name="metrekare" placeholder="Metre Kare"/></tr>
                                                <tr><h4>Isıtma: </h4><input style="width: 1000px" id="isitma" type="text" name="isitma" placeholder="Isıtma"/></tr>
                                                <tr><h4>Oda Sayısı: </h4><input style="width: 1000px" id="odasayisi" type="number" name="odasayisi" placeholder="Oda Sayısı"/></tr>
                                                <tr><h4>Kat Sayısı: </h4><input style="width: 1000px" id="katsayisi" type="number" name="katsayisi" placeholder="Kat Sayısı"/></tr>
                                                <tr><h4>Eşya: </h4><input style="width: 1000px" id="esya" type="text" name="esya" placeholder="Eşya"/></tr>
                                                <tr><h4>Bina Yaşı: </h4><input style="width: 1000px" id="binayasi" type="number" name="binayasi" placeholder="Bina Yaşı"/></tr>
                                                <tr><h4>Fiyat: </h4><input style="width: 1000px" id="price" type="number" name="price" placeholder="Fiyat"/></tr>
                                                <tr><h4>Aidat: </h4><input style="width: 1000px" id="aidat" type="number" name="aidat" placeholder="Aidat"/></tr>

                                                <tr><h4>Detail: </h4><textarea id="detail" name="detail"></textarea>
                                                    <script>
                                                        window.onload = function () {
                                                            CKEDITOR.replace('detail', {
                                                                filebrowserBrowseUrl: filemanager.ckBrowseUrl,
                                                            });
                                                        }
                                                    </script>



                                                </tr>
                                                <tr><h4>Slug: </h4><input style="width: 1000px" id="slug" type="text" name="slug" placeholder="Slug"/></tr>
                                                <tr><br><label for="image"><h4>Image:</h4></label><input type="file" name="image" id="image" class="form-control"></tr>
                                                <tr><button type="submit" class="btn-primary">Ekle</button></tr>
                                            </table>
                                        </form>
                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>


                </div>
            </div>
        </div>
    </section>
@endsection

