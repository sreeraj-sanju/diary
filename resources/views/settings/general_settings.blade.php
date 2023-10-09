@extends('super_admin.layout')
@section('content')
    <section class="h-100 h-custom" style="background-color: #8fc4b7;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="">
                    <div class="card rounded-3">
                        {{-- <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
                            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                            alt="Sample photo"> --}}
                        <div class="card-body p-4 p-md-5">
                            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">General Settings</h3>

                            <form method="post" action="{{ route('update_settings') }}" enctype="multipart/form-data"
                                class="px-md-2">
                                @csrf
                                @if (Session::has('message'))
                                    <div class="alert {!! session('alert-class') !!} text-white"><em>
                                            {!! session('message') !!}</em></div>
                                @endif
                                @foreach ($settings as $setting)
                                    <input type="hidden" name="id" value="{{ $setting->id }}">
                                    <div class="row">
                                        <div class="form-outline mb-4 col-md-6">
                                            <input type="text" value="{{ $setting->app_name }}" name="app_name"
                                                class="form-control" />
                                            <label class="form-label" for="form3Example1q">App Name</label>
                                            @error('app_name')
                                                <span class="text-danger error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-outline mb-4 col-md-6">
                                            <input type="text" value="{{ $setting->app_description }}"
                                                name="app_description" class="form-control" />
                                            <label class="form-label" for="form3Example1q">App Description</label>
                                            @error('app_description')
                                                <span class="text-danger error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-outline mb-4 col-md-6">
                                            <input type="text" value="{{ $setting->app_email }}" name="app_email"
                                                class="form-control" />
                                            <label class="form-label" for="form3Example1q">Contact Email</label>
                                            @error('app_email')
                                                <span class="text-danger error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-outline mb-4 col-md-6">
                                            <input type="text" value="{{ $setting->app_phone }}" name="app_phone"
                                                class="form-control" />
                                            <label class="form-label" for="form3Example1q">Contact Phone</label>
                                            @error('app_phone')
                                                <span class="text-danger error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-outline mb-4 col-md-4">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img class="" src="data:image/png;base64,{{ chunk_split(base64_encode($setting->favicon)) }}" height="50" alt="pic">
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="file" class="form-control" name="favicon" />
                                                    <label class="form-label" for="form3Example1q">Favicon</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-outline mb-4 col-md-4">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img class="" src="data:image/png;base64,{{ chunk_split(base64_encode($setting->logo)) }}" height="50" alt="pic">
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="file" class="form-control" name="logo" />
                                                    <label class="form-label" for="form3Example1q">Logo</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-outline mb-4 col-md-4">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img class="" src="data:image/png;base64,{{ chunk_split(base64_encode($setting->side_icon)) }}" height="50" alt="pic">
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="file" class="form-control" name="sideIcon" />
                                                    <label class="form-label" for="form3Example1q">Sidebar Icon</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                                <button type="submit" class="btn btn-success btn-lg mb-1">Update</button>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
