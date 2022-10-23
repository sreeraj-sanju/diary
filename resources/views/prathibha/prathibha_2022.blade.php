<!doctype html>
<html lang="en">

<head>
    <title>Prathibha</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="{{ asset('/new_assets/fonts.css') }}" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('/new_assets/font-awesome.min.css') }}">

    <link rel="stylesheet" href="{{ asset('/assets/css/login.css') }}">

    <link rel="stylesheet" href="{{ asset('/new_assets/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/dev.css') }}">

    <style>
        .form-color {
            background-color: rgba(50, 50, 50, .5);
            color: rgb(2, 31, 31) !important;
        }

        .form-control {
            color: black !important;
        }
    </style>
</head>

<body class="img_pr img-fluid" style="background-image: url(images/new_pr.jpg);">

    <section class="ftco-section_pr">
        <div>
            @include('livewire.prathibha.programmes')
            @if (Session::has('message'))
                <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
            @endif
        </div>
        <div class="container pr_container">
            <table class="table table-hover table-bordered text-center">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col" colspan="5">Class</th>
                    </tr>
                </thead>
                <tbody>
                    {{-- START THE SECTION OF LP --}}
                    <tr>
                        <td scope="row">
                            <div class="custom-control custom-switch">
                                <input data-toggle="collapse" data-target="#lp" type="checkbox"
                                    class="custom-control-input" id="customSwitches">
                                <label class="custom-control-label toggler" for="customSwitches"></label>
                            </div>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">LP</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="lp" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">status</th>
                        </tr>
                        <tr class="content-row">
                            <td>1</td>
                            <td>demo</td>
                            <td>Dance</td>
                            <td>song</td>
                            <td>
                                <audio id="audio1">
                                    <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                </audio>
                                <button class="audio-button" id="playPauseBtnaudio1" onclick="playPause('audio1')">Play
                                    &#9658;</button>
                                <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                            </td>
                        </tr>
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF LP --}}

                    {{-- START THE SECTION OF UP --}}
                    <tr>
                        <td scope="row"><button type="button" class="btn btn-info btn-circle" data-toggle="collapse"
                                data-target="#up">+</button></td>
                        <td colspan="5">
                            <h6 class="program_heading">V</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="up" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">status</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>demo</td>
                            <td>Dance</td>
                            <td>song</td>
                            <td>played</td>
                        </tr>
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF UP --}}
                </tbody>
            </table>

        </div>
    </section>

    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('/assets/js/login.js') }}"></script>
    <script src="{{ asset('/new_assets/jquery.js') }}"></script>
    <script src="{{ asset('/new_assets/popper.min.js') }}"></script>
    <script src="{{ asset('/new_assets/bootstrap.min.js') }}"></script>
</body>
<script>
    var count = 0;
    var audio = document.getElementById('audio');

    function playPause(aud) {
        //var audio = $(this).data('value');
        var audio = document.getElementById(aud);

        if (count == 0) {
            count = 1;
            audio.play();
            $('#playPauseBtn' + aud).html("Pause &#9208;");
        } else {
            count = 0;
            audio.pause();
            $("#playPauseBtn" + aud).html("Play &#9658;");
        }
    }

    function stop(aud) {
        playPause(aud);
        var audio = document.getElementById(aud);
        audio.pause();
        audio.currentTime = 0;
        $('#playPauseBtn' + aud).html("Play &#9658;");
    }

    function myFunction() {
        var x = document.getElementByClass("toggleBtn");
        if (x.innerHTML == "+") {
            x.innerHTML = "-";
        } else {
            x.innerHTML = "+";
        }
    }
</script>

</html>
