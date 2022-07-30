
<div class="container-fluid py-4 px-4">
  <div class="sr-button-div">
    @include('livewire.budget.create')
    @include('livewire.budget.create_expense')
    @include('livewire.budget.create_earnings')
    @include('livewire.budget.update_expense')
    @include('livewire.budget.update_earnings')
  </div>
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
          {{ session('message') }}
        </div>
    @endif
    <div class="row">
      {{-- expense names start --}}
      <div class="col-md-6 sr-table-div">
        <table class="table table-bordered table-hover data-table">
          <thead>
              <tr>
                <th>No.</th>
                <th>Name</th>
              </tr>
          </thead>
          <tbody>
            @foreach($expense_names as $name)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$name->expense_name}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- expense name ends --}}
      {{-- earnings name starts --}}
      <div class="col-md-6 sr-table-div">
        <table class="table table-bordered table-hover data-table sr-table">
          <thead>
              <tr>
                  <th>No.</th>
                  <th>Name</th>
              </tr>
          </thead>
          <tbody>
            @foreach($earning_names as $earning_name)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$earning_name->expense_name}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- earnings name ends --}}
      {{-- expense amounts starts--}}
      <div class="col-md-6 sr-table-div">
        <table class="table table-bordered table-hover data-table ">
          <thead>
              <tr>
                  <th>No.</th>
                  <th>Date</th>
                  <th>Name</th>
                  <th>Amount</th>
                  <th>Action</th>
              </tr>
          </thead>
          <tbody>
            @foreach($expense_amounts as $e_amount)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$e_amount->expense_date}}</td>
              <td>{{$e_amount->expenseName}}</td>
              <td>{{$e_amount->expense_amount}}</td>
              <td>
                <button data-toggle="modal" data-target="#expenseUpdateModal" wire:click="expense_edit({{ $e_amount->id }})" class="btn btn-primary btn-sm">Edit</button>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- expense amount ends --}}
      {{-- earnings amount start --}}
      <div class="col-md-6 sr-table-div">
        <table class="table table-bordered table-hover data-table">
          <thead>
              <tr>
                  <th>No.</th>
                  <th>Date</th>
                  <th>Name</th>
                  <th>Amount</th>
                  <th>Action</th>
              </tr>
          </thead>
          <tbody>
            @foreach($earning_amounts as $ear_amount)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$ear_amount->expense_date}}</td>
              <td>{{$ear_amount->expense_name}}</td>
              <td>{{$ear_amount->expense_amount}}</td>
              <td>
                <button data-toggle="modal" data-target="#earningsUpdateModal" wire:click="expense_edit({{ $ear_amount->id }})" class="btn btn-primary btn-sm">Edit</button>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      {{-- earnings amount ends --}}
    </div>
</>