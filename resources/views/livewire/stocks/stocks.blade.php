<div>
    @include('livewire.stocks.stock_name')
    @include('livewire.stocks.stock_buy')
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
          {{ session('message') }}
        </div>
    @endif
    <div class="row">
        {{-- stock names start --}}
      <div class="col-lg-7">
        <table class="table table-bordered mt-5 data-table">
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
              <td>{{$stocks->stock_name}}</td>
              <td>{{$stocks->buy_count}}</td>
              <td>{{$stocks->buy_amount_single}}</td>
              <td>{{$stocks->total_buy_amount}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- stock names ends --}}
      {{-- stock names start --}}
      <div class="col-lg-5">
        <table class="table table-bordered mt-5 data-table">
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
    <div>
</div>
