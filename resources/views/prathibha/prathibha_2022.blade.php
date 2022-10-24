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
            <div>
                <p class="pr_an_heading">Total- {{$total}} chain - {{$tot_chain}}
                solo - {{$tot_solo}} Group - {{$tot_group}} Folk - {{$tot_folk}}
                Classical - {{$tot_classical}} Duet - {{$tot_duet}} Mime - {{$tot_mime}}
                Skit - {{$tot_skit}} Drama - {{$tot_drama}} Karoke - {{$tot_karoke}}
            </p>
            </div>
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
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#lp"
                                aria-expanded="false" aria-controls="collapseExample">
                                LP
                            </button>
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
                            <th scope="col">Operation</th>
                            <th>Action</th>
                        </tr>

                        @foreach ($lp as $lp1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $lp1->contastant }}</td>
                                <td>{{ $lp1->program_name }}</td>
                                <td>{{ $lp1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary" href="{{ route('program_edit',$lp1->id) }}">Edit</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF LP --}}

                    {{-- START THE SECTION OF v --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#v"
                                aria-expanded="false" aria-controls="collapseExample">
                                V
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">V</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="v" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                            <th>Action</th>
                        </tr>

                        @foreach ($v as $v1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $v1->contastant }}</td>
                                <td>{{ $v1->program_name }}</td>
                                <td>{{ $v1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                                <td> 
                                    <button type="butt">Edit</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF v --}}

                    {{-- START THE SECTION OF VI --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#vi"
                                aria-expanded="false" aria-controls="collapseExample">
                                VI
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">VI</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="vi" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($vi as $vi1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $vi1->contastant }}</td>
                                <td>{{ $vi1->program_name }}</td>
                                <td>{{ $vi1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF VI --}}

                    {{-- START THE SECTION OF vii --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#vii"
                                aria-expanded="false" aria-controls="collapseExample">
                                vii
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">VII</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="vii" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($vii as $vii1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $vii1->contastant }}</td>
                                <td>{{ $vii1->program_name }}</td>
                                <td>{{ $vii1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF vii --}}

                    {{-- START THE SECTION OF viii --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#viii"
                                aria-expanded="false" aria-controls="collapseExample">
                                viii
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">VIII</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="viii" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($viii as $viii1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $viii1->contastant }}</td>
                                <td>{{ $viii1->program_name }}</td>
                                <td>{{ $viii1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF viii --}}

                    {{-- START THE SECTION OF ix --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#ix"
                                aria-expanded="false" aria-controls="collapseExample">
                                ix
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">IX</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="ix" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($ix as $ix1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $ix1->contastant }}</td>
                                <td>{{ $ix1->program_name }}</td>
                                <td>{{ $ix1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF ix --}}

                    {{-- START THE SECTION OF x --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#x"
                                aria-expanded="false" aria-controls="collapseExample">
                                x
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">X</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="x" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($x as $x1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $x1->contastant }}</td>
                                <td>{{ $x1->program_name }}</td>
                                <td>{{ $x1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF x --}}

                    {{-- START THE SECTION OF plusOne --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#plusOne"
                                aria-expanded="false" aria-controls="collapseExample">
                                plusOne
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">plusOne</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="plusOne" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($plusOne as $plusOne1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $plusOne1->contastant }}</td>
                                <td>{{ $plusOne1->program_name }}</td>
                                <td>{{ $plusOne1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF plusOne --}}

                    {{-- START THE SECTION OF plusTwo --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#plusTwo"
                                aria-expanded="false" aria-controls="collapseExample">
                                plusTwo
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">plusTwo</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="plusTwo" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                        </tr>

                        @foreach ($plusTwo as $plusTwo1)
                            <tr class="content-row">
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $plusTwo1->contastant }}</td>
                                <td>{{ $plusTwo1->program_name }}</td>
                                <td>{{ $plusTwo1->song_name }}</td>
                                <td>
                                    <audio id="audio1">
                                        <source src="{{ asset('assets/boby.mp3') }}" type="audio/mpeg">
                                    </audio>
                                    <button class="audio-button" id="playPauseBtnaudio1"
                                        onclick="playPause('audio1')">Play
                                        &#9658;</button>
                                    <button class="audio-button" onclick="stop('audio1');">Stop &#9611;</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF plusTwo --}}

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
