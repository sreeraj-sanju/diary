
<div>
    @include('livewire.budget.create')
    @include('livewire.budget.create_expense')
    @include('livewire.budget.update_expense')
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
          {{ session('message') }}
        </div>
    @endif
    <div class="row">
      <div class="col-md-6">
        <table class="table table-bordered mt-5 data-table">
          <thead>
              <tr>
                <th>No.</th>
                <th>Name</th>
              </tr>
          </thead>
          <tbody>
            @foreach($names as $name)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$name->expense_name}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <div class="col-md-6">
        <table class="table table-bordered mt-5 data-table">
          <thead>
              <tr>
                  <th>No.</th>
                  <th>Name</th>
              </tr>
          </thead>
          <tbody>
            @foreach($names as $name)
            <tr>
              <td>{{$loop->index + 1}}</td>
              <td>{{$name->expense_name}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <div class="col-md-6">
        <table class="table table-bordered mt-5 data-table">
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
              <td>{{$e_amount->expense_name}}</td>
              <td>{{$e_amount->expense_amount}}</td>
              <td>
                <button data-toggle="modal" data-target="#expenseUpdateModal" wire:click="expense_edit({{ $e_amount->id }})" class="btn btn-primary btn-sm">Edit</button>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
</div>