<!-- Banner start -->
<div class="banner banner_video_bg" id="banner">
    <div class="pattern-overlay">
        <a id="bgndVideo" class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=5e0LxrLSzok',containment:'.banner_video_bg', quality:'large', autoPlay:true, mute:true, opacity:1}">bg</a>
    </div>
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item banner-max-height item-bg active">
                <div class="carousel-caption banner-slider-inner d-flex h-100 w-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center banner-info">

                            <div class="search-info">
                                <div class="inline-search-area">
                                    <div class="row">

                                        <div class="search" style="width: 1200px;">
                                            <form action="{{route('gethouse')}}" method="post" class="input-append">
                                                @csrf
                                                @livewire('search')
                                                <button class="btn btn-dark" type="submit">Search</button>
                                            </form>
                                            @livewireScripts
                                        </div>

                                    </div>




                                    <div class="w3-container">
                                    </div>

                                    <div class="w3-content w3-display-container">
                                        @foreach($slider as $rs)
                                        <div class="w3-display-container mySlides">
                                            <img src="{{\Illuminate\Support\Facades\Storage::url($rs->image)}}" width="650px" height="450px">
                                            <div class="flex-caption primary">
                                                <h2>{{$rs->price}} ₺</h2>
                                                <p><strong>{{$rs->title}}</strong></p>
                                                <div class="cta">
                                                    <a class="btn btn-primary btn-large e_tada" href="{{route('house',['id' => $rs->id,'slug' => $rs->slug])}}">

                                                        <i class="icon-plane icon-white"></i> İlanı İncele! </a>
                                                </div>
                                          </div>
                                        </div>


                                        @endforeach



                                        <button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
                                        <button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>

                                    </div>


                                    <script>
                                        var slideIndex = 1;
                                        showDivs(slideIndex);

                                        function plusDivs(n) {
                                            showDivs(slideIndex += n);
                                        }

                                        function showDivs(n) {
                                            var i;
                                            var x = document.getElementsByClassName("mySlides");
                                            if (n > x.length) {slideIndex = 1}
                                            if (n < 1) {slideIndex = x.length}
                                            for (i = 0; i < x.length; i++) {
                                                x[i].style.display = "none";
                                            }
                                            x[slideIndex-1].style.display = "block";
                                        }
                                    </script>









                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

