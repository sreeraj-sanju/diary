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
						<h2 class="heading-section_pr pr_heading">QUIZ COMPETITION 2022-23</h2>
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
						<button type="button" id="up_btn" class="form-control btn btn-primary bg-primary" data-toggle="modal" data-target="#exampleModalCenter">UP</button>
					</div>
					<div class="col-sm d-md-none">
						<br>
					</div>
					<div class="col-md-4">
						<button type="button" id="hs_btn" class="form-control btn btn-primary bg-primary">HS</button>
					</div>
					<div class="col-sm d-md-none">
						<br>
					</div>
					<div class="col-md-4">
						<button type="button" id="hss_btn" class="form-control btn btn-primary bg-primary">HSS</button>
					</div>
				</div>
			</div>
		</section>
  
		<!--Start UP buton Modal -->
		<div class="modal fade" id="up_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">UP QUIZ QUESTIONS</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<button type="button" id="vdo_btn1" class="form-control btn btn-primary bg-primary">VIDEO</button>
						</div>
						<div class="col-sm d-md-none">
							<br>
						</div>
						<div class="col-md-4">
							<button type="button" id="ado_btn1" class="form-control btn btn-primary bg-primary">AUDIO</button>
						</div>
						<div class="col-sm d-md-none">
							<br>
						</div>
						<div class="col-md-4">
							<button type="button" id="img_btn1" class="form-control btn btn-primary bg-primary">IMAGE</button>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		{{-- End up button modal --}}

		<!--Start HS buton Modal -->
		<div class="modal fade" id="hs_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HS QUIZ QUESTIONS</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<button type="button" id="vdo_btn2" class="form-control btn btn-primary bg-primary">VIDEO</button>
						</div>
						<div class="col-sm d-md-none">
							<br>
						</div>
						<div class="col-md-4">
							<button type="button" id="ado_btn2" class="form-control btn btn-primary bg-primary">AUDIO</button>
						</div>
						<div class="col-sm d-md-none">
							<br>
						</div>
						<div class="col-md-4">
							<button type="button" id="img_btn2" class="form-control btn btn-primary bg-primary">IMAGE</button>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		{{-- End HS button modal --}}

		<!--Start HSS buton Modal -->
		<div class="modal fade" id="hss_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HSS QUIZ QUESTIONS</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<button type="button" id="vdo_btn3" class="form-control btn btn-primary bg-primary">VIDEO</button>
						</div>
						<div class="col-sm d-md-none">
							<br>
						</div>
						<div class="col-md-4">
							<button type="button" id="ado_btn3" class="form-control btn btn-primary bg-primary">AUDIO</button>
						</div>
						<div class="col-sm d-md-none">
							<br>
						</div>
						<div class="col-md-4">
							<button type="button" id="img_btn3" class="form-control btn btn-primary bg-primary">IMAGE</button>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		{{-- End HSS button modal --}}

		{{-- start UP video audio image section --}}
		<div class="modal fade" id="vdo_div1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog" role="document" style="max-width: 100%">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">UP VIDEO QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<video width="100%" height="100%" controls>
						<source src="{{URL::asset("/images/pr.png")}}" type="video/mp4">
					</video>
				</div>
			</div>
			</div>
		</div>

		<div class="modal fade" id="ado_div1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">UP AUDIO QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<video width="100%" height="100%" controls>
						<source src="{{URL::asset("/images/pr.png")}}" type="video/mp4">
					</video>
				</div>
			</div>
			</div>
		</div>

		<div class="modal fade" id="img_div1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog" role="document" style="max-width: 100%">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">UP IMAGE QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<img width="100%" max-height="60%" src="{{asset('images/pr.png')}}" alt="">
				</div>
			</div>
			</div>
		</div>
		{{-- end UP video audio image section --}}

		{{-- start HS video audio image section --}}
		<div class="modal fade" id="vdo_div2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog" role="document" style="max-width: 100%">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HS VIDEO QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<video width="100%" height="100%" controls>
						<source src="{{URL::asset("/images/pr.png")}}" type="video/mp4">
					</video>
				</div>
			</div>
			</div>
		</div>

		<div class="modal fade" id="ado_div2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HS AUDIO QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<video width="100%" height="100%" controls>
						<source src="{{URL::asset("/images/pr.png")}}" type="video/mp4">
					</video>
				</div>
			</div>
			</div>
		</div>

		<div class="modal fade" id="img_div2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog" role="document" style="max-width: 100%">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HS IMAGE QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<img width="100%" max-height="60%" src="{{asset('images/pr.png')}}" alt="">
				</div>
			</div>
			</div>
		</div>
		{{-- end HS video audio image section --}}

		{{-- start HSS video audio image section --}}
		<div class="modal fade" id="vdo_div3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog" role="document" style="max-width: 100%">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HSS VIDEO QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<video width="100%" height="100%" controls>
						<source src="{{URL::asset("/images/pr.png")}}" type="video/mp4">
					</video>
				</div>
			</div>
			</div>
		</div>

		<div class="modal fade" id="ado_div3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HSS AUDIO QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<video width="100%" height="100%" controls>
						<source src="{{URL::asset("/images/pr.png")}}" type="video/mp4">
					</video>
				</div>
			</div>
			</div>
		</div>

		<div class="modal fade" id="img_div3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog" role="document" style="max-width: 100%">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">HSS IMAGE QUESTION</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body">
					<img width="100%" max-height="60%" src="{{asset('images/pr.png')}}" alt="">
				</div>
			</div>
			</div>
		</div>
		{{-- end HSS video audio image section --}}

		<script src="{{asset('js/jquery.min.js')}}"></script>
  		<script src="{{ asset('/assets/js/login.js')}}"></script>
		<script src="{{asset('assets/js/core/bootstrap.min.js')}}"></script>
	</body>
	<script>
		$(document).ready(function () {
			// start UP section
			$('#up_btn').click(function (e) { 
				$('#up_modal').modal('show');
				e.preventDefault();
				
			});
			$('#vdo_btn1').click(function (e) { 
				e.preventDefault();
				$('#vdo_div1').modal('show');
			});
			$('#ado_btn1').click(function (e) { 
				e.preventDefault();
				$('#ado_div1').modal('show');
			});
			$('#img_btn1').click(function (e) { 
				e.preventDefault();
				$('#img_div1').modal('show');
			});
			// End UP section

			// Start HS section
			$('#hs_btn').click(function (e) { 
				$('#hs_modal').modal('show');
				e.preventDefault();
				
			});
			$('#vdo_btn2').click(function (e) { 
				e.preventDefault();
				$('#vdo_div2').modal('show');
			});
			$('#ado_btn2').click(function (e) { 
				e.preventDefault();
				$('#ado_div2').modal('show');
			});
			$('#img_btn2').click(function (e) { 
				e.preventDefault();
				$('#img_div2').modal('show');
			});
			// End HS section

			// Start HSS section
			$('#hss_btn').click(function (e) { 
				$('#hss_modal').modal('show');
				e.preventDefault();
				
			});
			$('#vdo_btn3').click(function (e) { 
				e.preventDefault();
				$('#vdo_div3').modal('show');
			});
			$('#ado_btn3').click(function (e) { 
				e.preventDefault();
				$('#ado_div3').modal('show');
			});
			$('#img_btn3').click(function (e) { 
				e.preventDefault();
				$('#img_div3').modal('show');
			});
			$('.close').click(function (e) { 
				e.preventDefault();
				$('.modal').modal('hide');
			});
			// End hss section
		});
	</script>
</html>
