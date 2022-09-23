<!doctype html>
<html lang="en">
  <head>
  	<title>Prathibha</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<link rel="stylesheet" href="{{ asset('/assets/css/login.css')}}">


	</head>
	<body class="img_pr img-fluid" style="background-image: url(images/pr.png);">
		<section class="ftco-section_pr">
			<div class="container pr_container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section_pr pr_heading">QUIZ COMPETETION 2022-23</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-6 col-lg-4">
						<div class="login-wrap p-0">
							{{-- <h3 class="mb-4 text-center pr_text">Are You Ready To Start?</h3> --}}
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<button type="button" class="form-control btn btn-primary bg-primary">UP</button>
					</div>
					<div class="col-sm d-md-none">
						<br>
					</div>
					<div class="col-md-4">
						<button type="button" class="form-control btn btn-primary bg-primary">HS</button>
					</div>
					<div class="col-sm d-md-none">
						<br>
					</div>
					<div class="col-md-4">
						<button type="button" class="form-control btn btn-primary bg-primary">HSS</button>
					</div>
				</div>
			</div>
		</section>
		<script src="{{asset('js/jquery.min.js')}}"></script>
  		<script src="{{ asset('/assets/js/login.js')}}"></script>
	</body>
</html>
