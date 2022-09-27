
<div class="container-fluid py-4 px-4">
    <div class="sr-button-div">
      @include('livewire.actions.priority')
      @include('livewire.actions.planned_items')
    </div>
      @if (session()->has('message'))
          <div class="alert alert-success" style="margin-top:30px;">x
            {{ session('message') }}
          </div>
      @endif
      <div class="row">
        {{-- priority start --}}
        <div class="col-md-6 sr-table-div">
          <table class="table table-bordered table-hover data-table">
            <thead>
                <tr>
                  <th>No.</th>
                  <th>Priority Name</th>
                  <th>Priority Code</th>
                </tr>
            </thead>
            <tbody>
              @foreach($priorities as $name)
              <tr>
                <td>{{$loop->index + 1}}</td>
                <td>{{$name->priority_name}}</td>
                <td>{{$name->priority_code}}</td>
              </tr>
              @endforeach
              <tr>
                <td colspan="2">Total Items</td>
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
        {{-- priority ends --}}
        
        {{-- start planned item listing --}}
        <div class="col-md-6 sr-table-div">
          <table class="table table-bordered table-hover data-table">
            <thead>
                <tr>
                  <th>No.</th>
                  <th>Product Name</th>
                  <th>Expected Price</th>
                  <th>Priority</th>
                </tr>
            </thead>
            <tbody>
              @foreach($planed_item as $item)
              <tr>
                <td>{{$loop->index + 1}}</td>
                <td>{{$item->product_name}}</td>
                <td>{{$item->expected_amount}}</td>
                <td>{{$item->priority_name}}</td>
              </tr>
              @endforeach
              <tr>
                <td colspan="3">Total Items</td>
                <td>ok</td>
              </tr>
            </tbody>
          </table>
        </div>
        {{-- End planned item listing --}}
      </div>
    </div>