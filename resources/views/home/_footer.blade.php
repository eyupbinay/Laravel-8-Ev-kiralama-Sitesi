<!-- Footer start -->
<footer class="footer">
    <div class="container footer-inner">
        <div class="row">
            <div class="col-xl-4 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-item">
                    <h4>Contact Us</h4>
                    <ul class="contact-info">
                        <li>
                            {{$setting ?? ''->address}}
                        </li>
                        <li>
                            <a href="mailto:sales@hotelempire.com">{{$setting ?? ''->email}}</a>
                        </li>
                        <li>
                            <a href="tel:+55-417-634-7071">{{$setting ?? ''->phone}}</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
                <div class="footer-item">
                    <h4>Properties Types</h4>
                    <ul class="links">
                        <li>
                            <a>Apartment</a>
                        </li>
                        <li>
                            <a>Restaurant</a>
                        </li>
                        <li>
                            <a>My Houses</a>
                        </li>
                        <li>
                            <a>Villa & Condo</a>
                        </li>
                        <li>
                            <a>Family House</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
                <div class="footer-item">
                    <h4>Quick Links</h4>
                    <ul class="links">
                        <li>
                            <a>About Us</a>
                        </li>
                        <li>
                            <a>Services</a>
                        </li>
                        <li>
                            <a>Properties Details</a>
                        </li>
                        <li>
                            <a>My Account</a>
                        </li>
                        <li>
                            <a> Privacy Policy</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-4 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-item clearfix">
                    <h4>Subscribe</h4>
                    <div class="subscribe-box-2">
                        <form class="form-inline" action="#" method="GET">
                            <input type="text" class="form-control mb-sm-0" id="inlineFormInputName4" placeholder="Your Email">
                            <button type="submit" class="btn"><i class="fa fa-paper-plane"></i></button>
                        </form>
                    </div>
                    <ul class="social-list clearfix">
                        <li><a href="{{$setting ?? ''->facebook}}" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="{{$setting ?? ''->twitter}}" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="{{$setting ?? ''->instagram}}" class="instagram-bg"><i class="fa fa-instagram"></i></a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Sub footer start -->
<div class="sub-footer">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <p class="copy">© 2022 <a href="#">Eyüp</a> Trademarks and brands are the property of their respective owners.</p>
            </div>
        </div>
    </div>
</div>


<script src="{{ asset('assets')}}/js/jquery-2.2.0.min.js"></script>
<script src="{{ asset('assets')}}/js/popper.min.js"></script>
<script src="{{ asset('assets')}}/js/bootstrap.min.js"></script>
<script src="{{ asset('assets')}}/js/bootstrap-submenu.js"></script>
<script src="{{ asset('assets')}}/js/rangeslider.js"></script>
<script src="{{ asset('assets')}}/js/jquery.mb.YTPlayer.js"></script>
<script src="{{ asset('assets')}}/js/wow.min.js"></script>
<script src="{{ asset('assets')}}/js/bootstrap-select.min.js"></script>
<script src="{{ asset('assets')}}/js/jquery.easing.1.3.js"></script>
<script src="{{ asset('assets')}}/js/jquery.scrollUp.js"></script>
<script src="{{ asset('assets')}}/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="{{ asset('assets')}}/js/leaflet.js"></script>
<script src="{{ asset('assets')}}/js/leaflet-providers.js"></script>
<script src="{{ asset('assets')}}/js/leaflet.markercluster.js"></script>
<script src="{{ asset('assets')}}/js/dropzone.js"></script>
<script src="{{ asset('assets')}}/js/slick.min.js"></script>
<script src="{{ asset('assets')}}/js/jquery.filterizr.js"></script>
<script src="{{ asset('assets')}}/js/jquery.magnific-popup.min.js"></script>
<script src="{{ asset('assets')}}/js/jquery.countdown.js"></script>
<script src="{{ asset('assets')}}/js/maps.js"></script>
<script src="{{ asset('assets')}}/js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="{{ asset('assets')}}/js/ie10-viewport-bug-workaround.js"></script>


