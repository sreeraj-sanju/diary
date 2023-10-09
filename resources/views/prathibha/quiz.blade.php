@extends('prathibha.prathibha')

@section('content')
<section class="child-section quiz">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h6 class="heading6"><span class="first-h6 animate__animated animate__lightSpeedInLeft">Quiz</span><span class="second-h6 animate__animated animate__lightSpeedInRight">Questions</span></h6>
            </div>
            <div class="col-md-4 text-end mt-0">
                <button class="btn sr-btn" data-bs-toggle="modal" data-bs-target="#quiz-modal"><span class="first-btn animate__animated animate__lightSpeedInLeft">Add a new</span><span class="second-btn animate__animated animate__lightSpeedInRight"> question</span></button>
            </div>
        </div>
        <div class="table-responsive animate__animated animate__headShake">
            @if(session()->has('message'))
            <div class="alert alert-success">
                {{ session('message') }}
            </div>
            @endif
            <table class="table table-hover table-bordered sr-table">

                <thead class="table-head">
                    <tr>
                        <th>Year</th>
                        <th>Class</th>

                        <th>File</th>
                    </tr>
                </thead>
                <tbody class="table-body">
                    @foreach($quizes as $quiz)
                    <tr>
                        <td>{{$quiz->year}}</td>
                        <td class='text-uppercase'>{{$quiz->std}}</td>

                        <td>
                            @if($quiz->imageName)
                            <button type="button" class='btn btn-primary imageBtn' data-path="{{route('quiz_image')}}" data-value="{{$quiz->id}}" data-item="image">Image</button>
                            @endif
                            @if($quiz->audioName)
                            <button class='btn btn-primary imageBtn' data-path="{{route('quiz_image')}}" data-value="{{$quiz->id}}" data-item="audio" >Audio</button>
                            @endif
                            @if($quiz->videoName)
                            <button class='btn btn-primary imageBtn' data-path="{{route('quiz_image')}}" data-value="{{$quiz->id}}" data-item="video">video</button>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>


    <div class="modal fade" id="quiz-modal" tabIndex="-1" aria-labelledby="quiz-modalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header sr-header">
                    <h5 class="modal-title" id="quiz-modalLabel">Add a new question</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form method="POST" action="{{route('quiz_ins')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body sr-modal-body">
                        <div class="mb-3 row">
                            <label htmlFor="class" class="col-sm-3 col-form-label">Select a class</label>
                            <div class="col-sm-9">
                                <select name="std" value={formData.std} onChange={handleChange}>
                                    <option value="">Select a class</option>
                                    <option value="lp">LP</option>
                                    <option value='up'>UP</option>
                                    <option value='hs'>HS</option>
                                    <option value='hss'>HSS</option>
                                </select>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label htmlFor="class" class="col-sm-3 col-form-label">Select a type</label>
                            <div class="col-sm-9">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="item" id="inlineRadio1" value="image" checked={formData.item==='image' } onChange={handleChange} />
                                    <label class="form-check-label" htmlFor="inlineRadio1">Image</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="item" id="inlineRadio2" value="audio" checked={formData.item==='audio' } onChange={handleChange} />
                                    <label class="form-check-label" htmlFor="inlineRadio2">Audio</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="item" id="inlineRadio3" value="video" checked={formData.item==='video' } onChange={handleChange} />
                                    <label class="form-check-label" htmlFor="inlineRadio3">Video</label>
                                </div>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label htmlFor="file" class="col-sm-3 col-form-label">File</label>
                            <div class="col-sm-9">
                                <input type="file" name="file" class="form-control form-control-sm" id="file" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer sr-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade modal-fullscreen" id="imageModal" tabIndex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header sr-header">
                    <h5 class="modal-title" id="imageModalLabel">view Image</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <img id="quizImagesrc" src='{{asset('2023/quiz/lp/1691597951.png')}}' alt="Quiz Image" />
            </div>
        </div>
    </div>

    <div class="modal fade" id="audioModal" tabIndex="-1" aria-labelledby="audioModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header sr-header">
                    <h5 class="modal-title" id="audioModalLabel">Listen Audio</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <audio id="quizaudiosrc" src='' controls={true} autoPlay={true} >

            </div>
        </div>
    </div>

    <div class="modal fade modal-fullscreen" id="videoModal" tabIndex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header sr-header">
                    <h5 class="modal-title" id="videoModalLabel">Watch Video</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <video id="quizvideosrc" src=''controls autoPlay > 
            </div>
        </div>
    </div>

</section>
@endsection