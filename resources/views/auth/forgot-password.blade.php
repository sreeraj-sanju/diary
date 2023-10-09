<?php
use App\Models\Settings;
$logo = Settings::select('logo')->first();
?>
<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <img src="data:image/png;base64,{{ chunk_split(base64_encode($logo->logo)) }}" class="block h-20 w-auto"
                alt="main_logo">
        </x-slot>

        <div class="mb-4 text-sm text-gray-600">
            {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
        </div>

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('password.email') }}">
            @csrf

            <div class="block">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')"
                    required autofocus />
            </div>

            <div class="flex items-center justify-end mt-4">
                <x-jet-button>
                    {{ __('Email Password Reset Link') }}
                </x-jet-button>
            </div>
        </form>
        <form method="GET" action="/" class="flex items-center justify-start mt-0">
            <x-jet-button>
                {{ __('<< BACK') }}
            </x-jet-button>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
