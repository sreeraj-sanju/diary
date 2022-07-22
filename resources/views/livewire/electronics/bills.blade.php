<div>
    @include('livewire.electronics.bill_price')
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
          {{ session('message') }}
        </div>
    @endif
    <div class="row">
        {{-- stock buy start --}}
      <div class="col-md-11">
        <table class="table table-bordered mt-5 data-table">
          <thead>
              <tr>
                <th>No.</th>
                <th>Date</th>
                <th>Name</th>
                <th>Total Amount</th>
                <th>Amount Got</th>
                <th>Amount To Get</th>
                <th>Action</th>
              </tr>
          </thead>
          <tbody>
            @foreach($bills as $bill)
            <tr>
              <td>{{$loop->index+1}}</td>
              <td>{{$bill->date}}</td>
              <td>{{$bill->user_name}}</td>
              <td>{{$bill->total_price}}</td>
              <td>{{$bill->amount_got}}</td>
              <td>{{$bill->total_price-$bill->amount_got}}</td>
              <td>
                <button class="btn btn-info btn-sm" type="button" wire:click="edit({{$bill->id}})" data-toggle="modal" data-target="#base_modal">Edit</button>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- stock buy ends --}}

    <div>
</div>
