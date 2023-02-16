<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{env('APP_NAME')}} - Registration</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="{{asset('/assets/css/material-design-iconic-font.min.css')}}">
    <link rel="stylesheet" href="{{asset('/assets/fonts/register-font-awesome.min.css')}}">

    <!-- Main css -->
    <link rel="stylesheet" href="{{ asset('/assets/css/register.css')}} ">
</head>
<body>

    <div class="main">
        <div class="container">
            <div class="signup-content">
                {{-- <form method="POST" id="signup-form" class="signup-form" action="{{ route('register') }}">
                    @csrf
                    <h2>Sign up </h2>
                    <p class="desc">Find The Hero In You </p>
                    <div class="form-group">
                        <input type="text" class="form-input" name="name" id="name" placeholder="Your Name"/>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-input" name="email" id="email" placeholder="Email"/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-input" name="password" id="password" placeholder="Password"/>
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-input" name="password_confirmation" id="password_confirmation" placeholder="Confirm Password"/>
                        
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" id="submit" class="form-submit submit" value="Sign up"/>
                        <a href="/" class="submit-link submit">Sign in</a>
                    </div>
                </form> --}}
                <form method="POST" id="signup-form"action="{{ route('register') }}">
                    @csrf
                    <x-jet-validation-errors class="mb-4" />
                    <h2>Sign up </h2>
                    <div class="form-group">
                        <x-jet-label for="name" value="{{ __('Name') }}" />
                        <x-jet-input id="name" class="block mt-1 w-full form-input" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
                    </div>
        
                    <div class="mt-4">
                        <x-jet-label for="email" value="{{ __('Email') }}" />
                        <x-jet-input id="email" class="block mt-1 w-full form-input" type="email" name="email" :value="old('email')" required />
                    </div>
        
                    <div class="mt-4">
                        <x-jet-label for="password" value="{{ __('Password') }}" />
                        <x-jet-input id="password" class="block mt-1 w-full form-input" type="password" name="password" required autocomplete="new-password" />
                    </div>
        
                    <div class="mt-4">
                        <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                        <x-jet-input id="password_confirmation" class="block mt-1 w-full form-input" type="password" name="password_confirmation" required autocomplete="new-password" />
                    </div>
        
                    @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                        <div class="mt-4">
                            <x-jet-label for="terms">
                                <div class="flex items-center">
                                    <x-jet-checkbox name="terms" id="terms"/>
        
                                    <div class="ml-2">
                                        {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                                'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                                'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                        ]) !!}
                                    </div>
                                </div>
                            </x-jet-label>
                        </div>
                    @endif
        
                    <div class="flex items-center justify-end mt-4">
        
                        <x-jet-button class="ml-4 form-submit submit">
                            {{ __('Register') }}
                        </x-jet-button>

                        <a class="submit-link submit pull-right" href="/">
                            {{ __('Already registered?') }}
                        </a>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="{{asset('/js/jquery.min.js')}}"></script>
  	<script src="{{ asset('/assets/js/register.js')}}"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>