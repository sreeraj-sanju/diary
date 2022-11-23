<div class="container-fluid py-4 px-4">
    <div class="sr-button-div">
      @include('livewire.to_do_list.create')
      
    </div>
      @if (session()->has('message'))
          <div class="alert alert-success" style="margin-top:30px;">x
            {{ session('message') }}
          </div>
      @endif
      <div class="row">
        
        
        
        
      </div>
    </div>