<!doctype html>
<html lang="en">

<head>
    <title>Prathibha</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="{{ asset('/new_assets/fonts.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('/assets/css/login.css') }}">

    <link rel="stylesheet" href="{{ asset('/new_assets/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/dev.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/sweetalert2.min.css') }}">
    <link  href="{{ asset('/new_assets/font-awesome.css') }}" rel="stylesheet" >
    {{-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet"> --}}
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
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
                <p class="pr_an_heading">Total- {{ $total }} chain - {{ $tot_chain }}
                    solo - {{ $tot_solo }} Group - {{ $tot_group }} Folk - {{ $tot_folk }}
                    Classical - {{ $tot_classical }} Duet - {{ $tot_duet }} Mime - {{ $tot_mime }}
                    Skit - {{ $tot_skit }} Drama - {{ $tot_drama }} Karoke - {{ $tot_karoke }} Special
                    -{{ $tot_special }}
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
                                aria-expanded="false" onclick="toggleBtn('#lpIcon');" aria-controls="collapseExample">
                                <i id = "lpIcon" class=" icon-plus-sign"></i> LP
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
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $lp1->contastant }}</td>
                                <td>{{ $lp1->program_name }}</td>
                                <td>{{ $lp1->song_name }}</td>
                                <td>
                                    <audio id="{{$lp1->class.$lp1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/lp/' . $lp1->file_name) }}"
                                            type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$lp1->class.$lp1->id}}"
                                        onclick="playPause('{{$lp1->class.$lp1->id}}')" >Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$lp1->class.$lp1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $lp1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $lp1->id) }}">Delete</button>
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
                                aria-expanded="false" onclick="toggleBtn('#vIcon');" aria-controls="collapseExample">
                                <i id = "vIcon" class=" icon-plus-sign"></i> V
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
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $v1->contastant }}</td>
                                <td>{{ $v1->program_name }}</td>
                                <td>{{ $v1->song_name }}</td>
                                <td>
                                    <audio id="{{$v1->class.$v1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/5/'.$v1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$v1->class.$v1->id}}"
                                        onclick="playPause('{{$v1->class.$v1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$v1->class.$v1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $v1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $v1->id) }}">Delete</button>
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
                                aria-expanded="false" aonclick="toggleBtn('#viIcon');" aria-controls="collapseExample">
                                <i id = "viIcon" class=" icon-plus-sign"></i> VI
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
                            <th>Action</th>
                        </tr>

                        @foreach ($vi as $vi1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $vi1->contastant }}</td>
                                <td>{{ $vi1->program_name }}</td>
                                <td>{{ $vi1->song_name }}</td>
                                <td>
                                    <audio id="{{$vi1->class.$vi1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/6/'.$vi1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$vi1->class.$vi1->id}}"
                                        onclick="playPause('{{$vi1->class.$vi1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$vi1->class.$vi1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $vi1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $vi1->id) }}">Delete</button>
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
                                aria-expanded="false" onclick="toggleBtn('#viiIcon');" aria-controls="collapseExample">
                                <i id = "viiIcon" class=" icon-plus-sign"></i> vii
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
                            <th>Action</th>
                        </tr>

                        @foreach ($vii as $vii1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $vii1->contastant }}</td>
                                <td>{{ $vii1->program_name }}</td>
                                <td>{{ $vii1->song_name }}</td>
                                <td>
                                    <audio id="{{$vii1->class.$vii1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/7/'.$vii1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$vii1->class.$vii1->id}}"
                                        onclick="playPause('{{$vii1->class.$vii1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$vii1->class.$vii1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $vii1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $vii1->id) }}">Delete</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF vii --}}

                    {{-- START THE SECTION OF viii --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse"
                                data-target="#viii" aria-expanded="false" onclick="toggleBtn('#viiiIcon');" aria-controls="collapseExample">
                                <i id = "viiiIcon" class=" icon-plus-sign"></i> viii
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
                            <th>Action</th>
                        </tr>

                        @foreach ($viii as $viii1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $viii1->contastant }}</td>
                                <td>{{ $viii1->program_name }}</td>
                                <td>{{ $viii1->song_name }}</td>
                                <td>
                                    <audio id="{{$viii1->class.$viii1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/8/'.$viii1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$viii1->class.$viii1->id}}"
                                        onclick="playPause('{{$viii1->class.$viii1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$viii1->class.$viii1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $viii1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $viii1->id) }}">Delete</button>
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
                                aria-expanded="false" onclick="toggleBtn('#ixIcon');" aria-controls="collapseExample">
                                <i id = "ixIcon" class=" icon-plus-sign"></i> ix
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
                            <th>Action</th>
                        </tr>

                        @foreach ($ix as $ix1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $ix1->contastant }}</td>
                                <td>{{ $ix1->program_name }}</td>
                                <td>{{ $ix1->song_name }}</td>
                                <td>
                                    <audio id="{{$ix1->class.$ix1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/9/'.$ix1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$ix1->class.$ix1->id}}"
                                        onclick="playPause('{{$ix1->class.$ix1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$ix1->class.$ix1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $ix1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $ix1->id) }}">Delete</button>
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
                                aria-expanded="false" onclick="toggleBtn('#xIcon');" aria-controls="collapseExample">
                                <i id = "xIcon" class=" icon-plus-sign"></i> x
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
                            <th>Action</th>
                        </tr>

                        @foreach ($x as $x1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $x1->contastant }}</td>
                                <td>{{ $x1->program_name }}</td>
                                <td>{{ $x1->song_name }}</td>
                                <td>
                                    <audio id="{{$x1->class.$x1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/10/'.$x1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$x1->class.$x1->id}}"
                                        onclick="playPause('{{$x1->class.$x1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$x1->class.$x1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $x1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $x1->id) }}">Delete</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF x --}}

                    {{-- START THE SECTION OF plusOne --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse"
                                data-target="#plusOne" aria-expanded="false" onclick="toggleBtn('#oneIcon');" aria-controls="collapseExample">
                                <i id = "oneIcon" class=" icon-plus-sign"></i> plusOne
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
                            <th>Action</th>
                        </tr>

                        @foreach ($plusOne as $plusOne1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $plusOne1->contastant }}</td>
                                <td>{{ $plusOne1->program_name }}</td>
                                <td>{{ $plusOne1->song_name }}</td>
                                <td>
                                    <audio id="{{'plusOne'.$plusOne1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/+1/'.$plusOne1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{'plusOne'.$plusOne1->id}}"
                                        onclick="playPause('{{'plusOne'.$plusOne1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{'plusOne'.$plusOne1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $plusOne1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $plusOne1->id) }}">Delete</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF plusOne --}}

                    {{-- START THE SECTION OF plusTwo --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse"
                                data-target="#plusTwo" aria-expanded="false" onclick="toggleBtn('#twoIcon');" aria-controls="collapseExample">
                                <i id = "twoIcon" class=" icon-plus-sign"></i> plusTwo
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
                            <th>Action</th>
                        </tr>

                        @foreach ($plusTwo as $plusTwo1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $plusTwo1->contastant }}</td>
                                <td>{{ $plusTwo1->program_name }}</td>
                                <td>{{ $plusTwo1->song_name }}</td>
                                <td>
                                    <audio id="{{'plusTwo'.$plusTwo1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/+2/'.$plusTwo1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{'plusTwo'.$plusTwo1->id}}"
                                        onclick="playPause('{{'plusTwo'.$plusTwo1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{'plusTwo'.$plusTwo1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $plusTwo1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $plusTwo1->id) }}">Delete</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF plusTwo --}}

                    {{-- START THE SECTION OF special --}}
                    <tr>
                        <td scope="row">
                            <button class="btn btn-primary" type="button" data-toggle="collapse"
                                data-target="#special" aria-expanded="false" onclick="toggleBtn('#specialIcon');" aria-controls="collapseExample">
                                <i id = "specialIcon" class=" icon-plus-sign"></i> special
                            </button>
                        </td>
                        <td colspan="5">
                            <h6 class="program_heading">Special Program</h6>
                        </td>
                    </tr>
                    {{-- Start Content of programmes --}}
                    <thead id="special" class="collapse thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Contestent Name</th>
                            <th scope="col">Program</th>
                            <th scope="col">Song/Music</th>
                            <th scope="col">Operation</th>
                            <th>Action</th>
                        </tr>

                        @foreach ($special as $special1)
                            <tr class="content-row">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $special1->contastant }}</td>
                                <td>{{ $special1->program_name }}</td>
                                <td>{{ $special1->song_name }}</td>
                                <td>
                                    <audio id="{{$special1->class.$special1->id}}" controls class="audio-style">
                                        <source src="{{ asset('prathibha_annual_22/special/'.$special1->file_name) }}" type="audio/mpeg">
                                    </audio>
                                    {{-- <button class="audio-button" id="playPauseBtn{{$special1->class.$special1->id}}"
                                        onclick="playPause('{{$special1->class.$special1->id}}')">Play
                                        &#9658;</button> --}}
                                    <button class="audio-button" onclick="stop('{{$special1->class.$special1->id}}');">Stop &#9611;</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary edit_btn"
                                        data-path="{{ route('program_edit', $special1->id) }}">Edit</button>
                                    <button type="button" class="btn btn-danger delete_btn"
                                        data-path="{{ route('program_delete', $special1->id) }}">Delete</button>
                                </td>
                            </tr>
                        @endforeach
                    </thead>
                    {{-- End content of programmes --}}
                    {{-- END THE SECTION OF special --}}

                </tbody>
            </table>

        </div>
    </section>

    {{-- START EDIT MODAL --}}

    <!-- Modal -->
    <div wire:ignore.self class="modal fade srmodal" id="program_edit" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog sr-modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header sr-header">
                    <h5 class="modal-title sr-title" id="exampleModalLabel">Edit The Program</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                        wire:click.prevent="cancel()">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body sr-body">
                    <form action="{{ route('program_update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id" id="selected_id">

                        <div class="form-group row">
                            <label for="class" class="col-md-3 col-form-label">Class</label>
                            <div class="col-md-8">
                                <select name="class" class="form-control pr_form" id="class">
                                    <option value="">select a class</option>
                                    <option value="lp">LP</option>
                                    <option value="v">V</option>
                                    <option value="vi">VI</option>
                                    <option value="vii">VII</option>
                                    <option value="viii">VIII</option>
                                    <option value="ix">IX</option>
                                    <option value="x">X</option>
                                    <option value="+1">+1</option>
                                    <option value="+2">+2</option>
                                    <option value="special">Special Program</option>
                                </select>
                                @error('class')
                                    <span class="text-danger error">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="contastant_name" class="col-md-3 col-form-label">Contastant Name</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" name="contastant_name"
                                    id='contastant_name'>
                                @error('contastant_name')
                                    <span class="text-danger error">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="class" class="col-md-3 col-form-label">Program</label>
                            <div class="col-md-8">
                                <select name="program_name" class="form-control pr_form" id="program">
                                    <option value="">select a Program</option>
                                    <option value="solo">Single Dance</option>
                                    <option value="duet">Duet Dance</option>
                                    <option value="group">Group Dance</option>
                                    <option value="folk">Folk Dance</option>
                                    <option value="chain">Chain Dance</option>
                                    <option value="classical">Classical Dance</option>
                                    <option value="skit">Skit</option>
                                    <option value="drama">Drama</option>
                                    <option value="mime">Mime</option>
                                    <option value="karoke">Karoke</option>

                                </select>
                                @error('class')
                                    <span class="text-danger error">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="song_name" class="col-md-3 col-form-label">Song/Music Name</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" name="song_name" id='song_name'>
                                @error('song_name')
                                    <span class="text-danger error">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="file_name" class="col-md-3 col-form-label">File Name</label>
                            <div class="col-md-8">
                                <input type="file" class="form-control" name="file_name" id='file_name'>
                                @error('file_name')
                                    <span class="text-danger error">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary close-modal">Update</button>
                    </form>
                </div>
                <div class="modal-footer sr-footer">
                    <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn"
                        data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    {{-- END EDIT MODAL --}}
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('/assets/js/login.js') }}"></script>
    {{-- <script src="{{ asset('/new_assets/jquery.js') }}"></script> --}}
    <script src="{{ asset('/new_assets/popper.min.js') }}"></script>
    <script src="{{ asset('/new_assets/bootstrap.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/sweetalert2.min.js') }}"></script>
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

    $(document).on('click', '.edit_btn', function() {
        var path = $(this).data('path');
        $.ajax({
            type: "GET",
            url: path,
            success: function(response) {
                if (response.status == 200) {
                    $('#program_edit').modal('show');
                    $('#selected_id').val(response.id);
                    //$('#file_name').val(response.file);
                    $('#song_name').val(response.song);
                    $('#contastant_name').val(response.contastant);
                    $('#program').val(response.program);
                    $('#class').val(response.class);
                }
            }
        });
    });

    $(document).on('click', '.delete_btn', function() {
        var path = $(this).data('path');
        $.ajax({
            type: "GET",
            url: path,
            success: function(response) {
                if (response.status == 200) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: 'Deleted!',
                    })
                    window.location.reload();
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                    })
                }
            }
        });
    });

    
    function toggleBtn(id){
        $(id).toggleClass('icon-minus-sign');
    }
</script>

</html>
