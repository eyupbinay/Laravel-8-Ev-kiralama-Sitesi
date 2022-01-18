
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
                            <h3>We helps you find out Your need Let's explore.</h3>
                            <p>
                                This is real estate website template based on Bootstrap 4 framework.
                            </p>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
