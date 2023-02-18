<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ env('APP_NAME') }} - Registration</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="{{ asset('/assets/css/material-design-iconic-font.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/fonts/register-font-awesome.min.css') }}">

    <!-- Main css -->
    <link rel="stylesheet" href="{{ asset('/css/bootstrap.min.css') }}"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>

<body>
    <section class="vh-100" style="background-color: #eee;">

        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                    <form class="mx-1 mx-md-4" method="POST" action="{{ route('register') }}">
                                        @csrf
                                        <x-jet-validation-errors class="mb-4 text-danger" />
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <x-jet-label for="name" class="form-label"
                                                    value="{{ __('Name') }}" />
                                                <x-jet-input id="name" class="form-control" type="text"
                                                    name="name" :value="old('name')" required autofocus
                                                    autocomplete="name" />
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <x-jet-label for="email" class="form-label"
                                                    value="{{ __('Email') }}" />
                                                <x-jet-input id="email" class="form-control" type="email"
                                                    name="email" :value="old('email')" required />
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <x-jet-label for="password" class="form-label"
                                                    value="{{ __('Password') }}" />
                                                <x-jet-input id="password" class="form-control" type="password"
                                                    name="password" required autocomplete="new-password" />
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <x-jet-label for="password_confirmation" class="form-label"
                                                    value="{{ __('Confirm Password') }}" />
                                                <x-jet-input id="password_confirmation" class="form-control"
                                                    type="password" name="password_confirmation" required
                                                    autocomplete="new-password" />
                                            </div>
                                        </div>

                                        @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                                            <div class="mt-4">
                                                <x-jet-label for="terms">
                                                    <div class="flex items-center">
                                                        <x-jet-checkbox name="terms" id="terms" />

                                                        <div class="ml-2">
                                                            {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                                                'terms_of_service' =>
                                                                    '<a target="_blank" href="' .
                                                                    route('terms.show') .
                                                                    '" class="underline text-sm text-gray-600 hover:text-gray-900">' .
                                                                    __('Terms of Service') .
                                                                    '</a>',
                                                                'privacy_policy' =>
                                                                    '<a target="_blank" href="' .
                                                                    route('policy.show') .
                                                                    '" class="underline text-sm text-gray-600 hover:text-gray-900">' .
                                                                    __('Privacy Policy') .
                                                                    '</a>',
                                                            ]) !!}
                                                        </div>
                                                    </div>
                                                </x-jet-label>
                                            </div>
                                        @endif

                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <a class="underline text-sm text-gray-600 hover:text-gray-900 ml5"
                                                href="/">
                                                {{ __('Already registered?') }}
                                            </a>
                                            <x-jet-button class="ml-4 btn btn-primary btn-sm">
                                                {{ __('Register') }}
                                            </x-jet-button>
                                        </div>

                                    </form>

                                </div>
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                    <img src="{{ asset('/images/draw1.webp') }}" class="img-fluid" alt="Sample image">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- JS -->
    <script src="{{ asset('/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/js/core/bootstrap.min.js') }}"></script>
    {{-- <script src="{{ asset('/assets/js/register.js')}}"></script> --}}
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
