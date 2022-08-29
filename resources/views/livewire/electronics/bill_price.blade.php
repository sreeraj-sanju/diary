<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#base_modal">
	+ Bills
</button>

@extends('base_modal')

@section('modal_header')
<h5 class="modal-title sr-title">Electronics Bill</h5>
@endsection

@section('modal_body')
<form>
    <input type="hidden" wire:model="selected_id">
    <div class="form-group row">
        <label for="date" class="col-md-3 col-form-label">Date</label>
        <div class="col-md-8">
            <input type="date" class="form-control" name="date" placeholder="Select a date" wire:model="date">
            @error('date') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="user_name" class="col-md-3 col-form-label">User Name</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="user_name" wire:model='user_name'>
            @error('user_name') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="component_price" class="col-md-3 col-form-label">Component Price</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="component_price" wire:model='component_price'>
            @error('component_price') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="service_charge" class="col-md-3 col-form-label">Service Charge</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="service_charge" wire:model='service_charge'>
            @error('service_charge') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>
    <div class="form-group row">
        <label for="total_price" class="col-md-3 col-form-label">Total Price</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="total_price" wire:model='total_price'>
            @error('total_price') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="amount_got" class="col-md-3 col-form-label">Amount Got</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="amount_got" wire:model='amount_got'>
            @error('amount_got') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>

</form>

@endsection

@section('modal_action')
<button type="button" class="btn btn-secondary close-btn" wire:click.prevent="cancel()" data-dismiss="modal">Close</button>
<button type="button" wire:click.prevent="{{ $selected_id ? 'bill_amount_update()':'bill_amount_store()'}}" class="btn btn-primary close-modal">{{ $selected_id ? 'Update':'Save'}}</button>
@endsection