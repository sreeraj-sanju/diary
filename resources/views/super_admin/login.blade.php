<!doctype html>
<html lang="en">
  <head>
  	<title>{{env('APP_NAME')}} - Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<link rel="stylesheet" href="{{ asset('/assets/css/login.css')}}">

	</head>
	{{-- <body class="img js-fullheight" style="background-image: url(images/bg.jpg);"> --}}
	<body class="img " style="background-image: url(images/bg.jpg);">
		<section class="ftco-section">
			@if (session('status'))
				<div class="mb-4 font-medium text-sm text-green-600">
					{{ session('status') }}
				</div>
			@endif
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">{{env('APP_NAME')}} - Find The Hero In You</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-6 col-lg-4">
						<div class="login-wrap p-0">
							<h3 class="mb-4 text-center">Have an account?</h3>
							<form method="POST" action="{{ route('login') }}" class="signin-form">
								@csrf
								<div class="form-group">
									<input id="email" type="email" name="email" class="form-control" placeholder="Email" required autofocus>
								</div>
								<div class="form-group">
									<input id="password" type="password" name="password" autocomplete="current-password" class="form-control" placeholder="Password" required>
									<span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
								</div>
								<div class="form-group">
									<button type="submit" id="sbmtBtn" class="form-control btn btn-primary submit px-3">Sign In</button>
								</div>
								<div class="form-group d-md-flex">
									<div class="w-50">
										<label class="checkbox-wrap checkbox-primary">Remember Me
											<input type="checkbox" id="remember_me" name="remember" checked>
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="{{ route('password.request') }}" style="color: #fff">Forgot Password</a>
									</div>
								</div>
							</form>
							<p class="w-100 text-center">&mdash; Haven't An Account &mdash;</p>
							<div class="social d-flex text-center">
								<a href="{{ route('register') }}" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Register</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<script src="{{asset('js/jquery.min.js')}}"></script>
  		<script src="{{ asset('/assets/js/login.js')}}"></script>
	</body>
</html>
