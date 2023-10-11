@extends('prathibha.prathibha')

@section('content')
<!-- // ***** Main Banner Area Start ***** -->
<section class="section main-banner" id="top" data-section="section1">
    <div id="bg-video">
        <img alt='no' src="assets/prathibha/images/video-bg.jpg" />
    </div>

    <div class="report">
    <table class="table table-hover table-bordered text-center report-table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">slNo</th>
                        <th scope="col">Class</th>
                        <th>Program</th>
                        <th>Name</th>
                        <th style="width:100px !important;">Participants</th>
                        <th>Music</th>
                        <th>Priority</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                @foreach ($data as $lp1)
                <tr class="content-row">
                    <td>{{ $loop->index + 1 }}</td>
                    <td>{{ $lp1->class }}</td>
                    <td>{{ $lp1->program_name }}</td>
                    <td>{{ $lp1->contastant }}</td>
                    <td>{{ $lp1->participant }}</td>
                    <td>{{ $lp1->song_name }}</td>
                    <form action="{{route('priority')}}" method="POST">
                        @csrf
                        <input type="hidden" name="id" value="{{$lp1->id}}">
                    <td><input type="number" name="priority" value="{{$lp1->priority}}"></td>
                    <td><button class="btn btn-secondary btn-xs">Update</button> </td>
                    </form>
                </tr>
                                    @endforeach
                </tbody>
    </table>
    </div>
</section>
<!-- // ***** Main Banner Area End ***** -->
@endsection
