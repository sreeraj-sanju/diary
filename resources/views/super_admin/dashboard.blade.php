@extends('super_admin.layout')
@section('content')
<div class="container-fluid py-4">
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card" style="height: 150px">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">weekend</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Yearly Savings</p>
                <p class="mb-0 text-bold" @if($total_sav > 0) style="color: green" @else style="color:red" @endif >{{ $total_sav }} ({{ $sav_percent }}%)</p>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+55% </span>than lask week</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card" style="height: 150px">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">person</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">monthly savings</p>
                <p class="text-sm mb-0 text-bold" @if ($savings > 0) style="color: green" @else style="color: red" @endif >{{$savings}},(<span class="font-weight-bolder">{{$savings_perc}}%</span>),{{date('M')}}</p>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+3% </span>than lask month</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card" style="height: 150px">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">person</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Stock Profit</p>
                <p class="text-sm mb-0 text-bold" @if ($profit > 0) style="color: green" @else style="color: red" @endif >
                  @if ($profit > 0) {{$profit}} <span class="text-bold">({{$profit_perc}}%) </span> @else {{ $profit }} ({{$profit_perc}}%) @endif 
                </p>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">-2%</span> than yesterday</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6">
          <div class="card" style="height: 150px">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">weekend</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Electronics (To get)</p>
                <p class="mb-0 text-bold" @if ($amount_got > 0) style="color: green" @else style="color: red" @endif>{{ $amount_got}} ({{ $amount_to_get}})</p>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+5% </span>than yesterday</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-8 col-md-12 mt-4 mb-4">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-bars" class="chart-canvas" height="370"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-4">
                  <h6 class="mb-0 ">Total Expenses</h6>
                  <p class="text-sm text-bold" style="color: red">Expenses - {{$total_exp}}</p>
                </div>
                <div class="col-md-4">
                  <h6 class="mb-0 ">Total Debt Paid</h6>
                  <p class="text-sm text-bold" style="color: red">Total Debt Paid - {{$debtPA}}</p>
                </div>
                <div class="col-md-4">
                  <h6 class="mb-0 ">Total Debt Interest Paid</h6>
                  <p class="text-sm text-bold" style="color: red">Total Debt - {{$debtIA > 0 ? $debtIA : 0}}</p>
                </div>
              </div>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> campaign sent 2 days ago </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-12 mt-4 mb-4">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-info shadow-primary border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-bars-earning" class="chart-canvas" height="350"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <h6 class="mb-0 ">Total Earnings</h6>
                  <p class="text-sm text-bold" style="color: green">Total Earnings - {{$total_ear}}</p>
                </div>
                <div class="col-md-6">
                  <h6 class="mb-0 ">Debt Earnings</h6>
                  <p class="text-sm text-bold" style="color: green">Total Debt Earnings - {{$debtEA}}</p>
                </div>
              </div>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> campaign sent 2 days ago </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 mt-4 mb-4">
          <div class="card z-index-2  ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-secondary shadow-info border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line" class="chart-canvas" height="250"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-0 "> Monthly Report - ( {{$finYear}} )</h6>
              <p class="text-sm text-bold" @if ($savings > 0) style="color: green" @else style="color: red" @endif >Amount of {{$savings}} as (<span class="font-weight-bolder">{{$savings_perc}}%</span>) this month {{date('M')}}. </p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> updated 4 min ago </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 mt-4 mb-3">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line-tasks" class="chart-canvas" height="235"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-4">
                  <h6 class="mb-0 ">Yearly Expense</h6>
                  <p class="text-sm text-bold" style="color: red">{{ $total_exp }}</p>
                </div>
                <div class="col-md-4">
                  <h6 class="mb-0 ">Yearly Earned</h6>
                  <p class="text-sm text-bold" style="color: green">{{ $total_ear }}</p>
                </div>
                <div class="col-md-4">
                  <h6 class="mb-0 ">Yearly Savings</h6>
                  <p class="text-sm text-bold" @if($total_sav > 0) style="color: green" @else style="color:red" @endif >{{ $total_sav }} ({{ $sav_percent }}%)</p>
                </div>
              </div>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm">just updated</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12 col-md-12 mt-4 mb-4">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-success shadow-primary border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-bars-stocks" class="chart-canvas" height="370"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-4">
                  <h6 class="mb-0 ">Total Invested Amount</h6>
                  <p class="text-sm text-bold" style="color: red">{{$stockTotal}}</p>
                </div>
                <div class="col-md-4">
                  <h6 class="mb-0 ">Total Selled Amount</h6>
                  <p class="text-sm text-bold" style="color:green">{{$stockSellAmount}}</p>
                </div>
                <div class="col-md-4">
                  <h6 class="mb-0 ">
                    @if ($profit > 0) <b style="color: green">Profit</b> @else Profit @endif/
                    @if ($profit < 0) <b style="color: red">Loss</b> @else Loss @endif
                  </h6>
                  <p class="text-sm text-bold" @if ($profit > 0) style="color: green" @else style="color: red" @endif >
                    @if ($profit > 0) {{$profit}} <span class="text-bold">({{$profit_perc}}%) </span> @else {{ $profit }} ({{$profit_perc}}%) @endif 
                  </p>
                </div>
              </div>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> campaign sent 2 days ago </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mb-4" style="max-height: 50% !important">
        <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
          <div class="card">
            <div class="card-header pb-0">
              <div class="row">
                <div class="col-lg-6 col-7">
                  <h6>Stock Analysis</h6>
                  <p class="text-sm mb-0">
                    <i class="fa fa-check text-info" aria-hidden="true"></i>
                    <span class="font-weight-bold ms-1">30 done</span> this month
                  </p>
                </div>
                <div class="col-lg-6 col-5 my-auto text-end">
                  <div class="dropdown float-lg-end pe-4">
                    <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-ellipsis-v text-secondary"></i>
                    </a>
                    <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a></li>
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Another action</a></li>
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Companies</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Current Price</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Debt</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Divident</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Promoter</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($stocks as $stock)
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div>
                            <img src="./assets/img/small-logos/logo-xd.svg" class="avatar avatar-sm me-3" alt="xd">
                          </div>
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">{{$stock->stock_name}}</h6>
                          </div>
                        </div>
                      </td>
                      {{-- <td>
                        <div class="avatar-group mt-2">
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Tompson">
                            <img src="./assets/img/team-1.jpg" alt="team1">
                          </a>
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Romina Hadid">
                            <img src="./assets/img/team-2.jpg" alt="team2">
                          </a>
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Alexander Smith">
                            <img src="./assets/img/team-3.jpg" alt="team3">
                          </a>
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Jessica Doe">
                            <img src="./assets/img/team-4.jpg" alt="team4">
                          </a>
                        </div>
                      </td> --}}
                      <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> {{$stock->current_price}} </span>
                      </td>
                      <td class="align-middle">
                        <div class="progress-wrapper w-75 mx-auto">
                          <div class="progress-info">
                            <div class="progress-percentage">
                              <span class="text-xs font-weight-bold">{{$stock->debt_equity}}%</span>
                            </div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar bg-gradient-info w-{{round(($stock->debt_equity)*100)}}" role="progressbar" aria-valuenow="{{($stock->debt_equity)*100}}" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </td>

                      <td class="align-middle">
                        <div class="progress-wrapper w-50 mx-auto">
                          <div class="progress-info">
                            <div class="progress-percentage">
                              <span class="text-xs font-weight-bold">{{$stock->divident}}%</span>
                            </div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar bg-gradient-info w-{{round($stock->divident)*10}}" role="progressbar" aria-valuenow="{{round(($stock->divident)*10)}}" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </td>

                      <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> {{$stock->promoter_holding}} </span>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="card h-100">
            <div class="card-header pb-0">
              <h6>Orders overview</h6>
              <p class="text-sm">
                <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
                <span class="font-weight-bold">24%</span> this month
              </p>
            </div>
            <div class="card-body p-3">
              <div class="timeline timeline-one-side">
                <div class="timeline-block mb-3">
                  <span class="timeline-step">
                    <i class="material-icons text-success text-gradient">notifications</i>
                  </span>
                  <div class="timeline-content">
                    <h6 class="text-dark text-sm font-weight-bold mb-0">$2400, Design changes</h6>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">22 DEC 7:20 PM</p>
                  </div>
                </div>
                <div class="timeline-block mb-3">
                  <span class="timeline-step">
                    <i class="material-icons text-danger text-gradient">code</i>
                  </span>
                  <div class="timeline-content">
                    <h6 class="text-dark text-sm font-weight-bold mb-0">New order #1832412</h6>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">21 DEC 11 PM</p>
                  </div>
                </div>
                <div class="timeline-block mb-3">
                  <span class="timeline-step">
                    <i class="material-icons text-info text-gradient">shopping_cart</i>
                  </span>
                  <div class="timeline-content">
                    <h6 class="text-dark text-sm font-weight-bold mb-0">Server payments for April</h6>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">21 DEC 9:34 PM</p>
                  </div>
                </div>
                <div class="timeline-block mb-3">
                  <span class="timeline-step">
                    <i class="material-icons text-warning text-gradient">credit_card</i>
                  </span>
                  <div class="timeline-content">
                    <h6 class="text-dark text-sm font-weight-bold mb-0">New card added for order #4395133</h6>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">20 DEC 2:20 AM</p>
                  </div>
                </div>
                <div class="timeline-block mb-3">
                  <span class="timeline-step">
                    <i class="material-icons text-primary text-gradient">key</i>
                  </span>
                  <div class="timeline-content">
                    <h6 class="text-dark text-sm font-weight-bold mb-0">Unlock packages for development</h6>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">18 DEC 4:54 AM</p>
                  </div>
                </div>
                <div class="timeline-block">
                  <span class="timeline-step">
                    <i class="material-icons text-dark text-gradient">payments</i>
                  </span>
                  <div class="timeline-content">
                    <h6 class="text-dark text-sm font-weight-bold mb-0">New order #9583120</h6>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">17 DEC</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
@endsection

@section('script')
<script>
    var ctx = document.getElementById("chart-bars").getContext("2d");
    var amount =  {{ Js::from($value ? $value :'') }};
    var label =  {{ Js::from($label ? $label:'') }};
    new Chart(ctx, {
      type: "bar",
      data: {
        labels: label,
        datasets: [{
          label: "Expense",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 2,
          borderSkipped: false,
          backgroundColor: "rgba(255, 255, 255, .8)",
          data: amount,
          maxBarThickness: 10
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx5 = document.getElementById("chart-bars-stocks").getContext("2d");
    var amount =  {{ Js::from($stockData) }};
    var sell =  {{ Js::from($stockSell) }};
    var label =  {{ Js::from($stockLabel) }};
    new Chart(ctx5, {
      type: "bar",
      data: {
        labels: label,
        datasets: [{
          label: "buy",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 2,
          borderSkipped: true,
          backgroundColor: "rgba(255, 10, 80, .8)",
          data: amount,
          maxBarThickness: 10
        }, {
          label: "sell",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 2,
          borderSkipped: true,
          backgroundColor: "rgba(10, 255, 100, .8)",
          data: sell,
          maxBarThickness: 10
        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx4 = document.getElementById("chart-bars-earning").getContext("2d");
    var amount =  {{ Js::from($valueEar ? $valueEar :'') }};
    var label =  {{ Js::from($labelEar ? $labelEar:'') }};
    new Chart(ctx4, {
      type: "bar",
      data: {
        labels: label,
        datasets: [{
          label: "Earnings",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 2,
          borderSkipped: false,
          backgroundColor: "rgba(255, 255, 255, .8)",
          data: amount,
          maxBarThickness: 10
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx2 = document.getElementById("chart-line").getContext("2d");
    var amount =  {{ Js::from($valueEx ? $valueEx :'') }};
    var amountEr =  {{ Js::from($valueEr ? $valueEr :'') }};
    var label =  {{ Js::from($labelEx ? $labelEx:'') }};
    new Chart(ctx2, {
      type: "line",
      data: {
        labels: label,
        datasets: [{
          label: "Expense",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 100, 100, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 100, 200, .8)",
          borderColor: "rgba(255, 180, 200, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: amount,
          maxBarThickness: 6
        }, {
          label: "Earnings",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(50, 255, 100, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(100, 255, 150, .8)",
          borderColor: "rgba(100, 255, 100, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: amountEr,
          maxBarThickness: 6
        }],
      },
      
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");
    var amount =  {{ Js::from($valueYEx ? $valueYEx :'') }};
    var amountEr =  {{ Js::from($valueYEr ? $valueYEr :'') }};
    var label =  {{ Js::from($labelYEx ? $labelYEx:'') }};
    new Chart(ctx3, {
      type: "line",
      data: {
        labels: label,
        datasets: [{
          label: "Earned",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(80, 255, 150, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(80, 255, 100, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: amountEr,
          maxBarThickness: 6

        },{
          label: "Expense",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 80, 150, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 80, 100, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: amount,
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#f8f9fa',
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });


  </script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  @endsection