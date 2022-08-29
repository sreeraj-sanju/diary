<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#base_modal">
	+ Selled Stocks
</button>

@extends ('base_modal')
@section ('modal_header')
    <h5 class="modal-title sr-title" id="exampleModalLabel">Sell A Stock</h5>
@endsection
@section ('modal_body')
<form>

    <div class="form-group row">
        <label for="date" class="col-md-3 col-form-label">Date</label>
        <div class="col-md-8">
            <input type="date" class="form-control" id="date" placeholder="Select a date" wire:model="sell_date">
            @error('sell_date') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="stock_name" class="col-md-3 col-form-label">Stock Names</label>
        <div class="col-md-8">
            <select name="stock_name" class="form-control"  id="" wire:model="stock_name">
                <option value="">select a name</option>
                @foreach ($stock_names as $name)
                <option value="{{$name->id}}">{{$name->name}}</option>
                @endforeach
            </select>
            @error('stock_name') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="sell_amount" class="col-md-3 col-form-label">Single Stock Amount</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="sell_amount_single" wire:model='sell_amount_single'>
            @error('sell_amount_single') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="sell_count" class="col-md-3 col-form-label"> Stock Sell Count</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="sell_count" wire:model='sell_count'>
            @error('sell_count') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="total_sell_amount" class="col-md-3 col-form-label"> Total Sell Amount</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="total_sell_amount" wire:model='total_sell_amount'>
            @error('total_sell_amount') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>
    <div class="form-group row">
        <label for="service_charge" class="col-md-3 col-form-label"> Service Charge</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="buy_charge" wire:model='buy_charge'>
            @error('buy_charge') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

</form>
@endsection

@section('modal_action')
    <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
    <button type="button" wire:click.prevent="stock_sell_store()" class="btn btn-primary close-modal">Save</button>
@endsection