<header class="main-header mh-3 header-transparent">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand logos" href="/">
                <img src="{{ asset('assets')}}/img/logos/logo-2.png" alt="logo" class="logo-none-2">
                <img src="{{ asset('assets')}}/img/logos/logo.png" alt="logo" class="logo-none">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Kategoriler
                        </a>
                        @php
                            $parentCategories=\App\Http\Controllers\HomeController::categoryList();
                        @endphp
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            @foreach($parentCategories as $rs)
                            <li><a class="dropdown-item" href="{{route('categoryhouses',['id'=>$rs->id,'slug'=>$rs->slug])}}">{{$rs->title}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Hızlı Erişim
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                                <li><a class="dropdown-item" href="{{route('aboutus')}}">Hakkımızda</a></li>
                            <li><a class="dropdown-item" href="{{route('contact')}}">İletişim</a></li>
                            <li><a class="dropdown-item" href="{{route('references')}}">Referanslarımız</a></li>
                            <li><a class="dropdown-item" href="{{route('faq')}}">SSS</a></li>

                        </ul>
                    </li>


                    @auth
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{Auth::user()->name}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="{{route('userprofile')}}">Profilim</a></li>
                            <li><a class="dropdown-item" href="{{route('user_review')}}">Yorumlarım</a></li>
                            <li><a class="dropdown-item" href="{{route('user_houses')}}">İlanlarım</a></li>
                            <li><a class="dropdown-item" href="{{route('logout')}}">Çıkış</a></li>
                        </ul>
                    </li>
                    @else
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Agents
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="/login">Giriş</a></li>
                                <li><a class="dropdown-item" href="/register">Kaydol</a></li>

                            </ul>
                        </li>
                    @endauth

                </ul>
            </div>
        </nav>
    </div>
</header>
