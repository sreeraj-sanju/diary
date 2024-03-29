<?php
use App\Models\Settings;
$favicon = Settings::select('favicon')->first();
$name = Settings::select('app_name')->first();
$desc = Settings::select('app_description')->first();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    {{-- <link rel="apple-touch-icon" sizes="760x76" href=".data:image/png;base64,{{ chunk_split(base64_encode($favicon->favicon)) }}"> --}}
    <link rel="shortcut icon" type="image/x-icon"
        href="data:image/png;base64,{{ chunk_split(base64_encode($favicon->favicon)) }}">
    <title>{{ $name->app_name }} - {{ $desc->app_description }}@yield('title')</title>
    @if (env('APP_ENV') == 'local')
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="{{ asset('css/fonts.css') }}" />
        <!-- Nucleo Icons -->
        <link href="{{ asset('/assets/css/nucleo-icons.css') }}" rel="stylesheet" />
        <link href="{{ asset('/assets/css/nucleo-svg.css') }}" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="{{ asset('/assets/js/kit-awesome.js') }}" crossorigin="anonymous"></script>
        <!-- Material Icons -->
        <link href="{{ asset('/assets/css/round-icon.css') }}" rel="stylesheet">
        <!-- CSS Files -->

        <link id="pagestyle" href="{{ asset('/assets/css/material-dashboard.min.css') }}" rel="stylesheet" />
        <link rel="stylesheet" href="{{ asset('/css/bootstrap.min.css') }}"
            integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="{{ asset('/css/jquery.dataTables.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('/css/jquery-confirm.min.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('/css/sweetalert2.min.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('/css/selectstyle.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('/css/dev.css') }}">
        <link href="{{ asset('/css/select2.min.css') }}" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css"
            rel="stylesheet">

        {{-- <link href="{{asset ('/css/fontawesome.min.css')}}" rel="stylesheet" /> --}}
    @else
        {{-- <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="./css/fonts.css" />
    <!-- Nucleo Icons -->
    <link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="./assets/js/kit-awesome.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="./assets/css/round-icon.css" rel="stylesheet">
    <!-- CSS Files -->
    
    <link id="pagestyle" href="./assets/css/material-dashboard.css?v=3.0.2" rel="stylesheet" />
    <!-- <link id="pagestyle" href="{{asset('/assets/css/material-dashboard.css')}}" rel="stylesheet" /> -->
    <link rel="stylesheet" href="./css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="./css/jquery-confirm.min.css">
    <link rel="stylesheet" type="text/css" href="./css/sweetalert2.min.css">
    <link rel="stylesheet" type="text/css" href="./css/selectstyle.css">
    <link rel="stylesheet" type="text/css" href="./css/dev.css">
    <link href="./css/select2.min.css" rel="stylesheet" /> --}}
    @endif

    @livewireStyles
    <style>
        .search {
            height: 50%;
            width: 100%;
        }

        th {
            color: rgb(250, 250, 250);
        }
    </style>
</head>

<body class="g-sidenav-show  bg-gray-200">
    @include('super_admin.sidebar')
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        @include('super_admin.navbar')
        {{-- @include('navigation-menu') --}}
        <section class="h-100 h-custom" style="background-color: #8fc4b7;">
            @yield('content')

        </section>
        @include('super_admin.footer')
    </main>
    <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="material-icons py-2">settings</i>
        </a>
        <div class="card shadow-lg">
            <div class="card-header pb-0 pt-3">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">Future Today Configurator</h5>
                    <p>See our dashboard options.</p>
                </div>
                <div class="float-end mt-4">
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                        <i class="material-icons">clear</i>
                    </button>
                </div>
                <!-- End Toggle Button -->
            </div>
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0">
                <!-- Sidebar Backgrounds -->
                <div>
                    <h6 class="mb-0">Sidebar Colors</h6>
                </div>
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="badge-colors my-2 text-start">
                        <span class="badge filter bg-gradient-primary active" data-color="primary"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-dark" data-color="dark"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-info" data-color="info"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-success" data-color="success"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-warning" data-color="warning"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-danger" data-color="danger"
                            onclick="sidebarColor(this)"></span>
                    </div>
                </a>
                <!-- Sidenav Type -->
                <div class="mt-3">
                    <h6 class="mb-0">Sidenav Type</h6>
                    <p class="text-sm">Choose between 2 different sidenav types.</p>
                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark"
                        onclick="sidebarType(this)">Dark</button>
                    <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent"
                        onclick="sidebarType(this)">Transparent</button>
                    <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white"
                        onclick="sidebarType(this)">White</button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
                <!-- Navbar Fixed -->
                <div class="mt-3 d-flex">
                    <h6 class="mb-0">Navbar Fixed</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                            onclick="navbarFixed(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-3">
                <div class="mt-2 d-flex">
                    <h6 class="mb-0">Light / Dark</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version"
                            onclick="darkMode(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-sm-4">
                {{-- <a class="btn btn-outline-dark w-100" href="">View documentation</a> --}}
                {{-- <div class="w-100 text-center">
          <a class="github-button" href="hd" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="ial-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div> --}}
            </div>
        </div>
    </div>

    @if (env('APP_ENV') == 'local')
        <!--   Core JS Files   -->
        {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --}}
        <script src="{{ asset('js/jquery.min.js') }}"></script>
        <script src="{{ asset('assets/js/core/popper.min.js') }}"></script>
        <script src="{{ asset('assets/js/core/bootstrap.min.js') }}"></script>
        <script src="{{ asset('assets/js/plugins/perfect-scrollbar.min.js') }}"></script>
        <script src="{{ asset('assets/js/plugins/smooth-scrollbar.min.js') }}"></script>
        <script src="{{ asset('assets/js/plugins/chartjs.min.js') }}"></script>
        {{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('js/jquery-confirm.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('js/sweetalert2.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('js/selectstyle.js') }}"></script>
        <script type="text/javascript" src="{{ asset('assets/js/material-dashboard.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('assets/js/kit-awesome.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/js/dev.js') }}"></script>
        <script src="{{ asset('js/select2.min.js') }}"></script>
        <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
        {{-- <script src="{{asset ('js/fontawesome.min.js')}}"></script> --}}
    @else
        <!--   Core JS Files   -->
        {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --}}
        <script src="./js/jquery.min.js"></script>
        <script src="./assets/js/core/popper.min.js"></script>
        <script src="./assets/js/core/bootstrap.min.js"></script>
        <script src="./assets/js/plugins/perfect-scrollbar.min.js"></script>
        <script src="./assets/js/plugins/smooth-scrollbar.min.js"></script>
        <script src="./assets/js/plugins/chartjs.min.js"></script>
        {{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}
        <script src="./js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="./js/jquery-confirm.min.js"></script>
        <script type="text/javascript" src="./js/sweetalert2.min.js"></script>
        <script type="text/javascript" src="./js/selectstyle.js"></script>
        <script src="./js/select2.min.js"></script>
    @endif
    @livewireScripts
    <script type="text/javascript">
        $(document).ready(function() {
            $('.data-table').DataTable();
            $('.searchable').select2({
                theme: 'classic',
            });
        });

        window.livewire.on('successAction', () => {
            // window.location.reload();
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'The Process Completed Successfully',
                showConfirmButton: false,
                timer: 1000
            }).then(() => {
                //window.location.reload();
            });

        });
        window.livewire.on('failedAction', () => {
            // window.location.reload();
            Swal.fire({
                position: 'center',
                icon: 'error',
                title: 'cannot Complete The Process',
                showConfirmButton: false,
                timer: 1000
            });
        });

        window.livewire.on('failedinfo', () => {
            // window.location.reload();
            Swal.fire({
                position: 'center',
                icon: 'error',
                title: 'Stock sell count more than buy count !!',
                showConfirmButton: false,
                timer: 1000
            });
        });

        //refresh action
        window.livewire.on('refresh', () => {
            window.location.reload();
        });
    </script>

    @yield('script')

    <!-- Github buttons -->
    <script async defer src="{{ asset('assets/js/git-buttons.js') }}"></script>
    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    {{-- <script src="{{asset('assets/js/material-dashboard.min.js?v=3.0.2')}}"></script> --}}
    <script>
        $(document).ready(function() {
            $('.data-table').DataTable();
        });

        //refresh action
        window.livewire.on('refresh', () => {
            window.location.reload();
        });

        $(document).ready(function() {
            var table = $('#myTable').DataTable({
                paging: true,
                
                // Other configuration options
            });

            $('#filterDropdown').on('change', function() {
                var filterValue = $(this).val();
                var path = $("#filterForm").attr('action')

                // AJAX request to fetch filtered data
                $.ajax({
                    url: path,
                    type: 'GET',
                    data: {
                        filterValue: filterValue
                    },
                    success: function(response) {
                        // Clear the existing table data
                        table.clear().draw();

                        // // Add the filtered data to the table
                        if (response && response.length > 0) {
                            var totalAmount = 0;
                            $.each(response, function(index, item) {
                                table.row.add([
                                    item.expense_item_name,
                                    item.expense_amount,
                                    item.expense_date
                                ]).draw();

                                // Calculate the total amount
                                totalAmount += parseFloat(item.expense_amount);
                            });

                            // Add the total amount row to the table
                            table.row.add([
                                'Total Amount:',
                                totalAmount.toFixed(2), // Assuming 2 decimal places
                                '' // Leave the date column empty for the total row
                            ]).draw();
                        }

                    },
                    error: function(xhr, status, error) {
                        // Handle error
                    }
                });
            });
        });
    </script>

</body>

</html>
