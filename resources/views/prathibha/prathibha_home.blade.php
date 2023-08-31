@extends('prathibha.prathibha')

@section('content')
<!-- // ***** Main Banner Area Start ***** -->
<section class="section main-banner" id="top" data-section="section1">
    <div id="bg-video">
        <img alt='no' src="assets/prathibha/images/video-bg.jpg" />
    </div>

    <div class="video-overlay header-text">
        <div class="caption">
            <!-- <h6>Graduate School of Management</h6>
                        <h2><em>Your</em> Classroom</h2> -->
            <!-- {/* <div class="main-button">
                            <div class="scroll-to-section"><a href="#section2">Discover more</a></div>
                        </div> */} -->

            <a href="{{route('quiz')}}" class="boton1">
                Quiz Competition
            </a>
            <a href="{{route('prathibha_2022')}}" class="boton2">
                Annual Programmes
            </a>
        </div>
    </div>
</section>
<!-- // ***** Main Banner Area End ***** -->
@endsection