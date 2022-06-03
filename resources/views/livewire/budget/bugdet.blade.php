
<div>
    @include('livewire.create')
    @include('livewire.update')
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
          {{ session('message') }}
        </div>
    @endif
    <table class="table table-bordered mt-5" id="table1">
        <thead>
            <tr>
                <th>No.</th>
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
          @foreach($names as $name)
          <tr>
            <td>{{$name->id}}</td>
            <td>{{$name->expense_name}}</td>
          </tr>
          @endforeach
        </tbody>
    </table>
</div>