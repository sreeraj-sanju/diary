
<div class="container-fluid py-4 px-4">
  <div class="sr-button-div">
    @include('livewire.stocks.stock_name')
    @include('livewire.stocks.stock_buy')
    @include('livewire.stocks.stock_sell')
    @include('livewire.stocks.stock_analysis')
  </div>
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
          {{ session('message') }}
        </div>
    @endif
    <div class="row">
        {{-- stock buy start --}}
      <div class="col-md-8 sr-table-div">
        <table class="table table-bordered  mt-5 data-table">
          <thead>
              <tr>
                <th>No.</th>
                <th>Date</th>
                <th>Name</th>
                <th>Buy Quantity</th>
                <th>Buy Amount</th>
                <th>Total Amount</th>
              </tr>
          </thead>
          <tbody>
            @foreach($buy_stocks as $stocks)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$stocks->buy_date}}</td>
              <td>{{$stocks->name}}</td>
              <td>{{$stocks->buy_count}}</td>
              <td>{{$stocks->buy_amount_single}}</td>
              <td>{{$stocks->total_buy_amount}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- stock buy ends --}}
      {{-- stock names start --}}
      <div class="col-md-4 pull-right sr-table-div">
        <table class="table table-bordered  data-table">
          <thead>
              <tr>
                <th>No.</th>
                <th>Name</th>
              </tr>
          </thead>
          <tbody>
            @foreach($stock_names as $name)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$name->name}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- stock names ends --}}

      {{-- stock sell start --}}
      <div class="col-md-12 sr-table-div ">
        <table class="table table-bordered mt-5 data-table">
          <thead>
              <tr>
                <th>No.</th>
                <th>Date</th>
                <th>Name</th>
                <th>Sell Quantity</th>
                <th>Sell Amount</th>
                <th>Total Amount</th>
                <th>Profit</th>
              </tr>
          </thead>
          <tbody>
            @foreach($sell_stocks as $stocks)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$stocks->sell_date}}</td>
              <td>{{$stocks->name}}</td>
              <td>{{$stocks->sell_count}}</td>
              <td>{{$stocks->sell_amount_single}}</td>
              <td>{{$stocks->total_sell_amount}}</td>
              <td>{{$stocks->profit}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- stock sell ends --}}

    <div>
</div>
